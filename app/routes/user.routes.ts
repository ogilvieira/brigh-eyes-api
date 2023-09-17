import { FastifyInstance } from "fastify";
import UserController from '@controllers/user.controller';

export default async (server: FastifyInstance) => {
  server.get('/user/:id', { preValidation: [server.auth]}, UserController.one);
  return server;
};
