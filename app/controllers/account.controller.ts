import { FastifyReply, FastifyRequest } from "fastify";
import validator from 'validator';
import { AppDataSource } from "@plugins/database";
import { User } from "@entity/User";
import checkEncryptedPassword from "@helpers/checkEncryptedPassword";
import getDecodedTokenByHeader from "@helpers/getDecodedTokenByHeader";
import jwt from 'jsonwebtoken';
import { validateOrReject } from 'class-validator';

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
      select: ['id', 'nome', 'sobrenome', 'nascimento'],
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

type RegisterRequest = FastifyRequest<{
  Body: { 
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
  userData.nome = request.body.nome,
  userData.sobrenome = request.body.sobrenome,
  userData.nascimento = request.body.nascimento,
  userData.cpf = request.body.cpf,
  userData.telefone = request.body.telefone,
  userData.email = request.body.email,
  userData.senha = request.body.senha

  try {
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

async function profile(request: FastifyRequest , reply: FastifyReply) {
  const decodetoken: any = getDecodedTokenByHeader(request.headers['authorization'] ?? '');

 
  try {
    if(!decodetoken || !decodetoken?.id) { throw Error("Usuário não encontrado.") }
    const { id } = decodetoken;

    const user = await userRepository.findOne({ 
      select: ['id', 'nome', 'sobrenome', 'nascimento', 'email', 'telefone', 'cpf'],
      where: { id: id }
    });
  
    reply.send(user);
  
  } catch (err) {
    return err;
  }
}

async function profileUpdate(request: RegisterRequest , reply: FastifyReply) {
  const decodetoken: any = getDecodedTokenByHeader(request.headers['authorization'] ?? '');

  try {
    if(!decodetoken || !decodetoken?.id) { throw Error("Usuário não encontrado.") }
    const { id } = decodetoken; 

    const userData = new User();
    userData.nome = request.body.nome;
    userData.sobrenome = request.body.sobrenome;
    userData.nascimento = request.body.nascimento;
    userData.cpf = request.body.cpf;
    userData.telefone = request.body.telefone;
    userData.email = request.body.email;

    await validateOrReject(userData, { 
      stopAtFirstError: true,
      skipMissingProperties: true,
      validationError: { target: false, value: false }
    });

    await userRepository.update({ id: id }, userData);

    reply.send({ message: "Usuário atualizado com sucesso." })

  } catch (err) {
    console.error(err);
    return reply.status(400).send(err);
  }
}

async function passwordUpdate(request: RegisterRequest , reply: FastifyReply) {
  const decodetoken: any = getDecodedTokenByHeader(request.headers['authorization'] ?? '');

  try {
    if(!decodetoken || !decodetoken?.id) { throw Error("Usuário não encontrado.") }
    const { id } = decodetoken; 

    const userData = new User();
    userData.senha = request.body.senha;

    await validateOrReject(userData, { 
      stopAtFirstError: true,
      skipMissingProperties: true,
      validationError: { target: false, value: false }
    });

    await userRepository.update({ id: id }, userData);

    reply.send({ message: "Senha atualizada com sucesso." })

  } catch (err) {
    console.error(err);
    return reply.status(400).send(err);
  }
}

export default {
  oauth,
  me,
  recover,
  register,
  profile,
  profileUpdate,
  passwordUpdate
}
