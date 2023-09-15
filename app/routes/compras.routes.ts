import { FastifyInstance } from "fastify";
import ComprasController from '@controllers/compras.controller';

export default async (server: FastifyInstance) => {
  server.get('/compras', { preValidation: [server.auth]}, ComprasController.all);
  server.get('/compras/:id', { preValidation: [server.auth]}, ComprasController.one);
  server.post('/compra', { preValidation: [server.auth]}, ComprasController.create);
  return server;
};
