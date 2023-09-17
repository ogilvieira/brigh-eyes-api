import { FastifyInstance } from "fastify";
import UserController from '@controllers/user.controller';

export default async (server: FastifyInstance) => {
  server.get('/user/:id', { preValidation: [server.auth]}, UserController.one);
  server.get('/users', { preValidation: [server.auth]}, UserController.all);
  server.post('/user', { preValidation: [server.auth]}, UserController.register);
  server.put('/user/:id', { preValidation: [server.auth]}, UserController.updateOne);
  server.delete('/user/:id', { preValidation: [server.auth]}, UserController.deleteOne);
  return server;
};
