import { FastifyInstance } from "fastify";
import AccountController from '@controllers/account.controller';

export default (server: FastifyInstance) => {
  server.post('/account/oauth', AccountController.oauth);
  server.post('/account/recuperar', AccountController.recover);
  server.get('/account/me', {
    preValidation: [server.auth]
  },
  AccountController.me);
  return server;
};
