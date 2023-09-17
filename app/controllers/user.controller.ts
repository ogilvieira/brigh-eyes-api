import { FastifyReply, FastifyRequest } from "fastify";
import { AppDataSource } from "@plugins/database";
import { User } from "@entity/User";
import getDecodedTokenByHeader from "@helpers/getDecodedTokenByHeader";

const userRepository = AppDataSource.getRepository(User);

async function one(request: FastifyRequest , reply: FastifyReply) {
  const decodetoken: any = getDecodedTokenByHeader(request.headers['authorization'] ?? '');

 
  try {
    if(!decodetoken || !decodetoken?.id) { throw Error("Usuário não encontrado.") }
    const { id } = decodetoken;

    const user = await userRepository.findOne({ 
      select: ['id', 'nome', 'sobrenome', 'nascimento', 'telefone', 'email'],
      relations: ['tipo'],
      where: { id: id }
    });
  
    reply.send(user);
  
  } catch (err) {
    return err;
  }
}

export default {
  one
}
