import { FastifyInstance } from "fastify";
import PedidosController from '@controllers/pedidos.controller';

export default async (server: FastifyInstance) => {
  server.get('/pedido/:id', { preValidation: [server.auth]}, PedidosController.one);
  server.get('/pedidos', { preValidation: [server.auth]}, PedidosController.all);
  return server;
};
