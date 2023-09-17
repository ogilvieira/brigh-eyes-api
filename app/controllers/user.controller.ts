import { FastifyReply, FastifyRequest } from "fastify";
import { AppDataSource } from "@plugins/database";
import { User } from "@entity/User";
import getDecodedTokenByHeader from "@helpers/getDecodedTokenByHeader";
import { ILike } from 'typeorm';
import { validateOrReject } from 'class-validator';
import validator from "validator";

const userRepository = AppDataSource.getRepository(User);

async function one(request: FastifyRequest , reply: FastifyReply) {
  const { id } = request.params as any;
 
  try {
    const user = await userRepository.findOne({ 
      select: ['id', 'nome', 'sobrenome', 'nascimento', 'telefone', 'email','cpf'],
      relations: ['tipo'],
      where: { id: id }
    });
  
    reply.send(user);
  
  } catch (err) {
    return err;
  }
}

async function all(request: FastifyRequest , reply: FastifyReply) {
  const page: number = +(request.query as any).page || 1;
  const limit: number = +(request.query as any).limit || 10;
  const terms: string = ''+(request.query as any).terms || '';
  const tipo: string = ''+(request.query as any).tipo || '';

  const decodetoken: any = getDecodedTokenByHeader(request.headers['authorization'] ?? '');
  if(!decodetoken || !decodetoken?.id) { throw Error("Usuário não encontrado.") }
  const tipo_key = decodetoken.tipo_key;

  if(!['cliente', 'gerente'].includes(tipo_key)) {
    return reply.status(400).send(Error("Usuário inválido para este tipo de operação."))
  }

  const whereObj: { [key: string]: any } = [];
  
  if( terms ) {
    whereObj.push({ nome: ILike(`%${terms}%`) });
    whereObj.push({ sobrenome: ILike(`%${terms}%`) });
    whereObj.push({ email: ILike(`%${terms}%`) });
  }

  if( tipo ) {
    whereObj.push({ tipo_key: tipo });
  }

  try {
    const [items, count] = await AppDataSource.getRepository(User).findAndCount({
      select: ['id', 'nome', 'sobrenome', 'email'],
      where: whereObj,
      skip: (page - 1) * limit,
      take: limit,
      relations: ['tipo'],
      order: {
        id: "DESC"
      }
    });

    reply.send({ users: items, total: count });
  } catch (err) {
    return reply.status(400).send(err);
  }
}

type RegisterRequest = FastifyRequest<{
  Body: { 
    tipo: string;
    nome: string;
    sobrenome: string;
    nascimento: string;
    cpf: string;
    telefone: string;
    email: string;
    senha: string;
  };
}>

async function register(request: RegisterRequest, reply: FastifyReply) {

  const userData = new User();
  userData.tipo_key = request.body.tipo;
  userData.nome = request.body.nome;
  userData.sobrenome = request.body.sobrenome;
  userData.nascimento = request.body.nascimento;
  userData.cpf = request.body.cpf;
  userData.telefone = request.body.telefone;
  userData.email = request.body.email;
  userData.senha = request.body.senha;

  try {
    const decodetoken: any = getDecodedTokenByHeader(request.headers['authorization'] ?? '');
    if(!decodetoken?.id) { throw Error("Usuário não encontrado.") }
    const tipo_key = decodetoken.tipo_key; 

    if(!['gerente'].includes(tipo_key)) {
      throw Error("Usuário inválido para este tipo de operação.")
    }

    await validateOrReject(userData, { 
      stopAtFirstError: true,
      skipMissingProperties: true,
      validationError: { target: false, value: false }
    });
  } catch (errors) {
    return reply.status(400).send(errors);
  }

  try {
    const user = await userRepository.create(userData)
    await userRepository.save(user)
    reply.send({ message: "Usuário cadastrado com sucesso!" });
  } catch (err) {
    console.error("Error", err);
    return reply.status(400).send(err);
  }
}

async function updateOne(request: RegisterRequest, reply: FastifyReply) {
  const id: number = (request.params as any).id;
  if(!request.body){ return reply.status(400).send(Error("Faltam campos requeridos.")); }

  const userData = new User();
  userData.tipo_key = request.body.tipo;
  userData.nome = request.body.nome;
  userData.sobrenome = request.body.sobrenome;
  userData.nascimento = request.body.nascimento;
  userData.cpf = request.body.cpf;
  userData.telefone = request.body.telefone;
  userData.email = request.body.email;
  userData.senha = request.body.senha;

  try {
    if(!id || !validator.isNumeric(''+id)){
      throw Error("ID de produto inválido.");
    }

    const decodetoken: any = getDecodedTokenByHeader(request.headers['authorization'] ?? '');
    if(!decodetoken?.id) { throw Error("Usuário não encontrado.") }
    const tipo_key = decodetoken.tipo_key; 

    if(!['gerente'].includes(tipo_key)) {
      throw Error("Usuário inválido para este tipo de operação.")
    }

    await validateOrReject(userData, { 
      stopAtFirstError: true,
      skipMissingProperties: true,
      validationError: { target: false, value: false }
    });
  } catch (errors) {
    return reply.status(400).send(errors);
  }

  try {
    const { affected } = await AppDataSource.getRepository(User).update(id, userData); 
    if(!affected){
      throw Error("Item não encontrado para atualização.")
    }
    reply.send({ message: "Usuário cadastrado com sucesso!" });
  } catch (err) {
    console.error("Error", err);
    return reply.status(400).send(err);
  }
}

async function deleteOne(request: FastifyRequest , reply: FastifyReply) {
  const id: number = (request.params as any).id;

  try {   
    if(!id || !validator.isNumeric(''+id)){
      throw Error("ID de produto inválido.");
    }

    const decodetoken: any = getDecodedTokenByHeader(request.headers['authorization'] ?? '');
    if(!decodetoken?.id) { throw Error("Usuário não encontrado.") }
    const tipo_key = decodetoken.tipo_key; 

    if(!['gerente'].includes(tipo_key)) {
      throw Error("Usuário inválido para este tipo de operação.")
    }

    const { affected } = await AppDataSource.getRepository(User).softDelete({ id });
    if(!affected){
      throw Error("Usuário não encontrado para exclusão.")
    }
    reply.send({ message: "Usuário excluído com sucesso." });
  } catch (err) {
    return reply.status(400).send(err);
  }
}

export default {
  one,
  all,
  register,
  updateOne,
  deleteOne
}
