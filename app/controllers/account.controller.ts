import { FastifyReply, FastifyRequest } from "fastify";
import validator from 'validator';
import { AppDataSource } from "@plugins/database";
import { User } from "@entity/User";
import checkEncryptedPassword from "@helpers/checkEncryptedPassword";
import getDecodedTokenByHeader from "@helpers/getDecodedTokenByHeader";
import jwt from 'jsonwebtoken';

type OauthRequest = FastifyRequest<{
  Body: { 
    email: string;
    senha: string;
  };
}>


const userRepository = AppDataSource.getRepository(User);

async function oauth(request: OauthRequest , reply: FastifyReply) { 

  const email = request.body?.email ?? '';
  const senha = request.body?.senha ?? '';

  if(!validator.isEmail(email)) {
    return reply.status(401).send(new Error("Email inválido."))
  }

  if(!validator.isLength(senha, { min: 6 })) {
    return reply.status(401).send(new Error("Senha inválida."))
  }

  try {
    const user = await userRepository.findOne({ 
      where: {
        email: email
      }
    });

    if(!user) {
      throw Error("Usuário não encontrado.")
    }

    const isValidPassword = await checkEncryptedPassword(senha, user.senha);

    if(!isValidPassword) {
      throw Error("Senha inválida.");
    }

    const token = jwt.sign({
      id: user.id,
      tipo_key: user.tipo_key,
    }, ''+process.env.JWT_SECRET, { expiresIn: 60 * 60 * 1000 });

    reply.send({ token });

  } catch (err) {
    return reply.status(401).send(err ?? new Error("Cadastro não encontrado."))
  }


  return reply.send("Ok!");
}

async function me(request: FastifyRequest , reply: FastifyReply) {
  const decodetoken: any = getDecodedTokenByHeader(request.headers['authorization'] ?? '');

 
  try {
    if(!decodetoken || !decodetoken?.id) { throw Error("Usuário não encontrado.") }
    const { id } = decodetoken;

    const user = await userRepository.findOne({ 
      select: ['id', 'nome', 'sobrenome'],
      relations: ['tipo'],
      where: { id: id }
    });
  
    reply.send(user);
  
  } catch (err) {
    return err;
  }
}

type RecoverRequest = FastifyRequest<{
  Body: { 
    email: string;
  };
}>

async function recover(request: RecoverRequest , reply: FastifyReply) {
  const email = request.body?.email ?? '';

  if(!validator.isEmail(email)) {
    return reply.status(401).send(new Error("Email inválido."))
  }

  try {
    const user = await userRepository.findOne({ 
      select: ['id', 'email'],
      where: { email: email }
    });
 
    if(!user){
      return reply.status(401).send(new Error("Email inválido."))
    } else {
      return reply.send({ message: `Enviamos uma mensagem de recuperação de senha para seu email: "${email}".`})
    }
 
  } catch (err) {
    return reply.status(401).send();
  }
}

export default {
  oauth,
  me,
  recover
}
