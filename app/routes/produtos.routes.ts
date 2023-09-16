import { FastifyInstance } from "fastify";
import ProdutosController from '@controllers/produtos.controller';

export default async (server: FastifyInstance) => {
  server.get('/produtos', ProdutosController.all);

  server.get('/produto/:id', ProdutosController.one);
  server.delete('/produto/:id', { preValidation: [server.auth]}, ProdutosController.deleteOne);
  server.put('/produto/:id', { preValidation: [server.auth]}, ProdutosController.updateOne);
  server.post('/produto', { preValidation: [server.auth]}, ProdutosController.create);
  return server;
};
