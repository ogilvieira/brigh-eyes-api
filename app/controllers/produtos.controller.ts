import { FastifyReply, FastifyRequest } from "fastify";
import { AppDataSource } from "@plugins/database";
import { Produto } from "@entity/Produto";
import { FindOperator, ILike } from "typeorm"

const produtosRepository = AppDataSource.getRepository(Produto);

interface WhereOptions {
  [key: string]: FindOperator<string>,
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

  const whereOptions: WhereOptions[] = [];

  if( requestQuery?.terms ) {
    whereOptions.push({ name: ILike(`%${requestQuery.terms}%`) });
    whereOptions.push({ fabricante: ILike(`%${requestQuery.terms}%`) });
    whereOptions.push({ descricao: ILike(`%${requestQuery.terms}%`) });
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

export default {
  all,
  one
}
