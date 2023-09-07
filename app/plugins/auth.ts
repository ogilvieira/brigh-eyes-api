import { FastifyRequest, FastifyReply } from "fastify";
import fp from "fastify-plugin";
import getDecodedTokenByHeader from "@helpers/getDecodedTokenByHeader";

export default fp(async (fastify) => {
  fastify.decorate('auth', async (request: FastifyRequest, reply: FastifyReply): Promise<void> => {  
    try {
      const decodetoken = getDecodedTokenByHeader(request.headers['authorization'] ?? '');
      if(!decodetoken){ throw Error() }
    } catch( err ){
      return reply.status(401).send(new Error("Token inválido."));
    }

  });
});
