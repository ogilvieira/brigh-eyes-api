import { FastifyReply, FastifyRequest } from "fastify";
import { AppDataSource } from "@plugins/database";
import { FindOperator, ILike } from "typeorm"
import { Produto } from "@entity/Produto";
import { Cartao } from "@entity/Cartao";
import { Endereco } from "@entity/Endereco";
import { Pedido } from "@entity/Pedido";
import getDecodedTokenByHeader from "@helpers/getDecodedTokenByHeader";
import { validateOrReject } from 'class-validator';
import validator from "validator";

const produtosRepository = AppDataSource.getRepository(Produto);

interface WhereOptions {
  name?: FindOperator<string>,
  descricao?: FindOperator<string>
}

async function all(request: FastifyRequest , reply: FastifyReply) {
  const terms: string = (request.query as any).terms || ''; 
  const page: number = +(request.query as any).page || 1;
  const limit: number = +(request.query as any).limit || 10;

  const requestQuery = {
    terms,
    limit,
    page
  }

  const whereOptions: WhereOptions = {}

  if( requestQuery?.terms ) {
    whereOptions.name = ILike(`%${requestQuery.terms}%`);
  }


  try {
    const [items, count] = await produtosRepository.findAndCount({
      select: ['id', 'name', 'imagem', 'fabricante', 'preco', 'descricao'],
      where: whereOptions,
      skip: (page - 1) * limit,
      take: limit,
      order: {
        id: "DESC"
      }
    });
    items.map(a => {
      a.imagem = `${process.env.HOST_IMAGES}${a.imagem}`;
      return a;
    }); 
    reply.send({ produtos: items, total: count });
  } catch (err) {
    return reply.status(400).send(err);
  }
}

async function one(request: FastifyRequest , reply: FastifyReply) {
  const id: number = (request.params as any).id;

  try {
    const produto = await produtosRepository.findOneBy({ id });
    if(!produto){ throw Error(); }
    produto.imagem = `${process.env.HOST_IMAGES}${produto.imagem}`;

    return produto;
  } catch (err) {
    return reply.status(400).send(err);
  }
}

interface IBodyCreatePedido {
  produtoId: string;
  receita: string;
  parcelas: string;
  logradouro: string;
  cep: string;
  numero: string;
  bairro: string;
  complemento?: string;
  cidade: string;
  uf: string;
  cc_numero: string;
  cc_nome: string;
  cc_data_expiracao: string;
  cc_cvv: string;
}

async function create(request: FastifyRequest , reply: FastifyReply) {
  const requestBody = request.body as IBodyCreatePedido;
  
  try {
    const decodetoken: any = getDecodedTokenByHeader(request.headers['authorization'] ?? '');

    if(!decodetoken || !decodetoken?.id) { throw Error("Usuário não encontrado.") }
    const user_id = decodetoken.id;
    const tipo_key = decodetoken.tipo_key; 
   
    if( tipo_key !== 'cliente') { 
      throw Error("Usuário inválido para este tipo de solicitação.")
    }

    const { produtoId } = requestBody;
    
    if(!produtoId || !validator.isNumeric(''+produtoId)) {
      throw Error("ID inválido de Produto.")
    }  

    const { cc_numero, cc_nome, cc_data_expiracao, cc_cvv } = requestBody;
    
    if(!validator.isNumeric(cc_cvv) || !validator.isLength(cc_cvv, { min: 3, max: 4 }) ) {
      throw Error("CVV de Cartão de Crédito inválido.")
    }

    const cartao = new Cartao();   
      cartao.user_id = user_id;
      cartao.numero = cc_numero;
      cartao.nome = cc_nome;
      cartao.data_expiracao = cc_data_expiracao;

    await validateOrReject(cartao, { 
      stopAtFirstError: true,
      skipMissingProperties:  true,
      validationError: { target: false, value: false }
    });

    if( !cartao.data_expiracao.includes("/") ) {
      throw Error("Data de expiração de Cartão de Crédito em formato inválido.");
    }

    const dataExpiracaoParsed = ((dateArr = cartao.data_expiracao.split("/")) => {
      const [mes,ano] = dateArr;
      return Date.parse(`20${ano}-${mes}-01`);
    })();

    if( isNaN(dataExpiracaoParsed) || dataExpiracaoParsed < Date.now()) {
      throw Error("Data de expiração de Cartão de Crédito inválida.");
    }

    const { logradouro, cep, numero, complemento, bairro, cidade, uf } = requestBody;
    
    const endereco = new Endereco();
      endereco.logradouro = logradouro;
      endereco.cep = cep;
      endereco.numero = numero;
      endereco.bairro = bairro;
      endereco.complemento = complemento;
      endereco.cidade = cidade;
      endereco.uf = uf;

      await validateOrReject(endereco, { 
        stopAtFirstError: true,
        skipMissingProperties:  false,
        validationError: { target: false, value: false }
      });

    const produto = await AppDataSource.getRepository(Produto).findOne({ 
      select: ['id', 'preco'], 
      where: { id: produtoId } as {[key: string]: any} 
    });
    
    if(!produto) {
      throw Error("Produto não existe.")
    }

    const { parcelas, receita } = requestBody;
    const pedido = new Pedido();
    pedido.produto_id = +produtoId;
    pedido.user_id = user_id;
    pedido.total = produto.preco;
    pedido.parcelas = +parcelas;
    pedido.receita = receita;

    await validateOrReject(pedido, { 
      stopAtFirstError: true,
      skipMissingProperties:  false,
      validationError: { target: false, value: false }
    });


    const cartaoSaved = await AppDataSource.getRepository(Cartao).save(cartao);
    const enderecoSaved = await AppDataSource.getRepository(Endereco).save(endereco);

    pedido.cartao_id = cartaoSaved.id;
    pedido.endereco_id = enderecoSaved.id;

    const pedidoSaved = await AppDataSource.getRepository(Pedido).save(pedido);

    return reply.send({
      id: pedidoSaved.id,
      message: "Compra realizada com sucesso",
    });
  } catch (err: any) {
    console.error(err);
    return reply.status(400).send({
      message: err?.message ?? "Erro ao tentar realizar o pedido.",
      err: err
    });
  }

}

export default {
  all,
  one,
  create
}
