import { FastifyReply, FastifyRequest } from "fastify";
import { AppDataSource } from "@plugins/database";
import { Produto } from "@entity/Produto";
import { FindOperator, ILike } from "typeorm"
import getDecodedTokenByHeader from "@helpers/getDecodedTokenByHeader";
import { validateOrReject } from 'class-validator';
import validator from "validator";

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
      a.imagem = a.imagem.match(new RegExp("([a-zA-Z0-9s_\\.-:])+(.png|.jpg|.gif)$")) ? `${process.env.HOST_IMAGES}${a.imagem}` : a.imagem;
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
    if(!produto){ throw Error("Produto não encontrado."); }
    produto.imagem = produto.imagem.match(new RegExp("([a-zA-Z0-9s_\\.-:])+(.png|.jpg|.gif)$", 'gi')) ? `${process.env.HOST_IMAGES}${produto.imagem}` : produto.imagem;

    return produto;
  } catch (err) {
    return reply.status(404).send(err);
  }
}

async function deleteOne(request: FastifyRequest , reply: FastifyReply) {
  const id: number = (request.params as any).id;

  try {   
    if(!id || !validator.isNumeric(''+id)){
      throw Error("ID de produto inválido.");
    }

    const decodetoken: any = getDecodedTokenByHeader(request.headers['authorization'] ?? '');
    if(!decodetoken || !decodetoken?.id) { throw Error("Usuário não encontrado.") }
    const tipo_key = decodetoken.tipo_key; 

    if(!['cliente', 'gerente'].includes(tipo_key)) {
      throw Error("Usuário inválido para este tipo de operação.")
    }

    const { affected } = await AppDataSource.getRepository(Produto).softDelete({ id });
    if(!affected){
      throw Error("Item não encontrado para exclusão.")
    }
    reply.send({ message: "Produto excluído com sucesso." });
  } catch (err) {
    return reply.status(400).send(err);
  }
}

interface IBodyUpdatePedido {
  imagem: string;
  name: string;
  descricao: string;
  fabricante: string;
  preco: string | number;
}

async function updateOne(request: FastifyRequest , reply: FastifyReply) {
  const id: number = (request.params as any).id;
  if(!request.body){ return reply.status(400).send(Error("Faltam campos requeridos.")); }

  try {   
    if(!id || !validator.isNumeric(''+id)){
      throw Error("ID de produto inválido.");
    }

    const decodetoken: any = getDecodedTokenByHeader(request.headers['authorization'] ?? '');
    if(!decodetoken || !decodetoken?.id) { throw Error("Usuário não encontrado.") }
    const tipo_key = decodetoken.tipo_key; 

    if(!['cliente', 'gerente'].includes(tipo_key)) {
      throw Error("Usuário inválido para este tipo de operação.")
    }

    const { imagem, name, descricao, fabricante, preco } = request.body as IBodyUpdatePedido;
    const produto = new Produto();
      produto.imagem = imagem;
      produto.name = name;
      produto.descricao = descricao;
      produto.fabricante = fabricante;
      produto.preco = +(preco ?? 0);


    await validateOrReject(produto, { 
      stopAtFirstError: true,
      skipMissingProperties:  false,
      validationError: { target: false, value: false }
    });

    const { affected } = await AppDataSource.getRepository(Produto).update(id, produto); 
    if(!affected){
      throw Error("Item não encontrado para atualização.")
    }

    reply.status(200).send({ message: "Produto atualizado com sucesso." });
    return produto;
  } catch (err) {
    return reply.status(400).send(err);
  }
}


async function create(request: FastifyRequest , reply: FastifyReply) {
  try {   
    const decodetoken: any = getDecodedTokenByHeader(request.headers['authorization'] ?? '');
    if(!decodetoken || !decodetoken?.id) { throw Error("Usuário não encontrado.") }
    const tipo_key = decodetoken.tipo_key; 

    if(!['cliente', 'gerente'].includes(tipo_key)) {
      throw Error("Usuário inválido para este tipo de operação.")
    }

    const { imagem, name, descricao, fabricante, preco } = request.body as IBodyUpdatePedido;
    const produto = new Produto();
      produto.imagem = imagem;
      produto.name = name;
      produto.descricao = descricao;
      produto.fabricante = fabricante;
      produto.preco = +(preco ?? 0);


    await validateOrReject(produto, { 
      stopAtFirstError: true,
      skipMissingProperties:  false,
      validationError: { target: false, value: false }
    });

    const produtoResult = await AppDataSource.getRepository(Produto).save(produto); 

    if(!produtoResult){
      throw Error("Item não encontrado para atualização.")
    }

    reply.status(200).send({ 
      message: "Produto criado com sucesso.",
      data: produtoResult
    });
    return produto;
  } catch (err) {
    return reply.status(400).send(err);
  }
}

export default {
  all,
  one,
  deleteOne,
  updateOne,
  create
}
