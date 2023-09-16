import { Pedido } from "@entity/Pedido";
import { AppDataSource } from "@plugins/database";
import { FastifyReply, FastifyRequest } from "fastify";
import getDecodedTokenByHeader from "@helpers/getDecodedTokenByHeader";
import validator from "validator";

async function one(request: FastifyRequest , reply: FastifyReply) {
  const { id } = request.params as any;
  const decodetoken: any = getDecodedTokenByHeader(request.headers['authorization'] ?? '');
  if(!decodetoken || !decodetoken?.id) { throw Error("Usuário não encontrado.") }
  const user_id = decodetoken.id;
  const tipo_key = decodetoken.tipo_key; 

  const whereObj: { [key: string]: any } = { id: id };

  if( tipo_key === 'cliente' ) {
    whereObj.user_id = user_id
  }

  try {
    if(!id || !validator.isNumeric(id)){
      throw Error("ID de pedido inválido.");
    }
  
    const pedido = await AppDataSource.getRepository(Pedido).findOne({ 
      where: whereObj,
      select: { 
        'id': true,
        'receita': true,
        'status': true, 
        'data_entrega': true, 
        'created_at': true, 
        'total': true, 
        'parcelas': true,
        produto: {
          imagem: true
        }
      },
      relations: ['endereco', 'produto'],
    });

    if(pedido?.produto?.imagem) {
      pedido.produto.imagem = `${process.env.HOST_IMAGES}${pedido.produto.imagem}`
    }

    reply.send(pedido);
  } catch (err) {
    reply.status(400).send(err);
  }
}

async function all(request: FastifyRequest , reply: FastifyReply) {
  const page: number = +(request.query as any).page || 1;
  const limit: number = +(request.query as any).limit || 10;

  const decodetoken: any = getDecodedTokenByHeader(request.headers['authorization'] ?? '');
  if(!decodetoken || !decodetoken?.id) { throw Error("Usuário não encontrado.") }
  const user_id = decodetoken.id;
  const tipo_key = decodetoken.tipo_key;

  const whereObj: { [key: string]: any } = {};

  if(tipo_key === 'cliente') {
    whereObj.user_id = user_id;
  }

  try {
    const [items, count] = await AppDataSource.getRepository(Pedido).findAndCount({
      select: { 
        'id': true,
        'created_at': true, 
        'status': true,
        'parcelas': true,
        'total': true,
        'produto': {
          imagem: true
        }
      },
      where: whereObj,
      skip: (page - 1) * limit,
      take: limit,
      order: {
        id: "DESC"
      },
      relations: ['produto'],
    });

    items.map(a => {
      a.produto.imagem = `${process.env.HOST_IMAGES}${a.produto.imagem}`;
      return a;
    }); 

    reply.send({ pedidos: items, total: count });
  } catch (err) {
    return reply.status(400).send(err);
  }
}

export default {
  one,
  all
}
