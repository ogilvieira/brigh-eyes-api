import { FastifyInstance } from "fastify";
import PedidosController from '@controllers/pedidos.controller';

export default async (server: FastifyInstance) => {
  server.get('/pedido/:id', { preValidation: [server.auth]}, PedidosController.one);
  server.get('/pedidos', { preValidation: [server.auth]}, PedidosController.all);

  server.post('/pedido/:id/aprovar', { preValidation: [server.auth]}, PedidosController.toApprove);
  server.post('/pedido/:id/enviar', { preValidation: [server.auth]}, PedidosController.toDeliver);
  server.post('/pedido/:id/cancelar', { preValidation: [server.auth]}, PedidosController.toCancel);

  return server;
};
