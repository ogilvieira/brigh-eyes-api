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
  const relationsArr = ['endereco', 'produto'];
  const selectObj: { [key: string]: any } = { 
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
  }

  if( tipo_key === 'cliente' ) {
    whereObj.user_id = user_id
  }

  if(['cliente', 'gerente'].includes(tipo_key)){
    relationsArr.push('user');
    selectObj.user = {
      email: true,
      nome: true,
      sobrenome: true,
      id: true
    }
  }

  try {
    if(!id || !validator.isNumeric(id)){
      throw Error("ID de pedido inválido.");
    }
  
    const pedido = await AppDataSource.getRepository(Pedido).findOne({ 
      where: whereObj,
      select: selectObj,
      relations: relationsArr,
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
  const relationsArr = ['produto'];

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
      relations: relationsArr,
    });

    items.map(a => {
      a.produto.imagem = a.produto.imagem.match(new RegExp("([a-zA-Z0-9s_\\.-:])+(.png|.jpg|.gif)$")) ? `${process.env.HOST_IMAGES}${a.produto.imagem}` : a.produto.imagem;
      return a;
    }); 

    reply.send({ pedidos: items, total: count });
  } catch (err) {
    return reply.status(400).send(err);
  }
}

async function toApprove (request: FastifyRequest, reply: FastifyReply) {
  const { id } = request.params as any;
  const decodetoken: any = getDecodedTokenByHeader(request.headers['authorization'] ?? '');
  if(!decodetoken || !decodetoken?.id) { throw Error("Usuário não encontrado.") }
  const tipo_key = decodetoken.tipo_key;

  if(!['gerente', 'editor'].includes(tipo_key)){
    return reply.status(400).send(Error("Tipo de usuário inválido para esta operação"));
  }

  try {
    await AppDataSource.getRepository(Pedido).update(id, {
      status: 'aguardando'
    });
    reply.send({ message: "Pedido aprovado com sucesso." })
  } catch (err) {
    reply.status(400).send(err);
  }
}


async function toDeliver (request: FastifyRequest, reply: FastifyReply) {
  const { id } = request.params as any;
  const decodetoken: any = getDecodedTokenByHeader(request.headers['authorization'] ?? '');
  if(!decodetoken || !decodetoken?.id) { throw Error("Usuário não encontrado.") }
  const tipo_key = decodetoken.tipo_key;

  if(!['gerente', 'editor'].includes(tipo_key)){
    return reply.status(400).send(Error("Tipo de usuário inválido para esta operação"));
  }

  const { rastreio, data_entrega } = request.body as any;

  try {
    await AppDataSource.getRepository(Pedido).update(id, {
      status: 'enviado',
      rastreio: rastreio,
      data_entrega: data_entrega
    });
    reply.send({ message: "Pedido despachado com sucesso." })
  } catch (err) {
    reply.status(400).send(err);
  }
}

async function toCancel (request: FastifyRequest, reply: FastifyReply) {
  const { id } = request.params as any;
  const decodetoken: any = getDecodedTokenByHeader(request.headers['authorization'] ?? '');
  if(!decodetoken || !decodetoken?.id) { throw Error("Usuário não encontrado.") }
  const tipo_key = decodetoken.tipo_key;

  if(!['gerente', 'editor'].includes(tipo_key)){
    return reply.status(400).send(Error("Tipo de usuário inválido para esta operação"));
  }

  try {
    await AppDataSource.getRepository(Pedido).update(id, {
      status: 'cancelado'
    });
    reply.send({ message: "Pedido cancelado com sucesso." })
  } catch (err) {
    reply.status(400).send(err);
  }
}

export default {
  one,
  all,
  toApprove,
  toDeliver,
  toCancel
}
