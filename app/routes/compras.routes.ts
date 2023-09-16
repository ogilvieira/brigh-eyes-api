import { FastifyInstance } from "fastify";
import ComprasController from '@controllers/compras.controller';

export default async (server: FastifyInstance) => {
  server.post('/compra', { preValidation: [server.auth]}, ComprasController.create);
  return server;
};
