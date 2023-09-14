import { FastifyInstance } from "fastify";
import ProdutosController from '@controllers/produtos.controller';

export default async (server: FastifyInstance) => {
  server.get('/produtos', ProdutosController.all);
  server.get('/produto/:id', ProdutosController.one);
  return server;
};
