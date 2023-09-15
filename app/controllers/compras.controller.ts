import { FastifyReply, FastifyRequest } from "fastify";
import { AppDataSource } from "@plugins/database";
import { Produto } from "@entity/Produto";
import { FindOperator, ILike } from "typeorm"

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

  // const { produtoId } = requestBody;
  const { cc_numero, cc_nome, cc_data_expiracao } = requestBody;

  const cartao = {
    numero: cc_numero,
    nome: cc_nome,
    data_expiracao: cc_data_expiracao 
  };
  const pedido = {};
  const endereco = {};

  reply.send({ cartao, pedido, endereco });
}

export default {
  all,
  one,
  create
}
