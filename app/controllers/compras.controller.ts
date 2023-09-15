import { FastifyReply, FastifyRequest } from "fastify";
import { AppDataSource } from "@plugins/database";
import { FindOperator, ILike } from "typeorm"
import { Produto } from "@entity/Produto";
import { Cartao } from "@entity/Cartao";
import { Endereco } from "@entity/Endereco";
import { Pedido } from "@entity/Pedido";
import { User } from "@entity/User";
import getDecodedTokenByHeader from "@helpers/getDecodedTokenByHeader";

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
  cc_numero: string;
  cc_nome: string;
  cc_data_expiracao: string;
  cc_cvv: string;
}

async function create(request: FastifyRequest , reply: FastifyReply) {
  const requestBody = request.body as IBodyCreatePedido;
  const { cc_numero, cc_nome, cc_data_expiracao } = requestBody;

  try {
    const decodetoken: any = getDecodedTokenByHeader(request.headers['authorization'] ?? '');
     if(!decodetoken || !decodetoken?.id) { throw Error("Usuário não encontrado.") }
    const user_id = decodetoken.id;
  
    const user = await AppDataSource.getRepository(User).findOne({ 
      select: ['id', 'tipo_key'],
      where: { id: user_id }
    });
  
    if( user?.tipo_key !== 'cliente') { 
      throw Error("Usuário inválido para este tipo de solicitação.")
    }
 
    const cartao = new Cartao();   
      cartao.user_id = user_id;
      cartao.numero = cc_numero;
      cartao.nome = cc_nome;
      cartao.data_expiracao = cc_data_expiracao;
    

    const endereco = new Endereco();
    // endereco.logradouro = logr

    const { produtoId } = requestBody;

    const pedido = new Pedido();
    pedido.produto_id = +produtoId;
    // pedido.endereco_id = 

  
    console.info({ cartao, pedido, endereco })
  
    return reply.send({
      id: 1,
      message: "Compra realizada com sucesso",
    });
  } catch (err: any) {
    return reply.status(400).send({
      message: err?.message ?? "Erro ao tentar realizar o pedido."
    });
  }

}

export default {
  all,
  one,
  create
}
