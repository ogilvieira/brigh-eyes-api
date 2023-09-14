import { FastifyInstance } from "fastify";
import AccountController from '@controllers/account.controller';

export default (server: FastifyInstance) => {
  server.post('/account/oauth', AccountController.oauth);
  server.post('/account/recuperar', AccountController.recover);
  server.post('/account/register', AccountController.register);
  
  server.get('/account/me', { preValidation: [server.auth]}, AccountController.me);
  server.get('/account/profile', { preValidation: [server.auth] }, AccountController.profile);
  server.put('/account/profile', { preValidation: [server.auth] }, AccountController.profileUpdate);
  server.put('/account/password', { preValidation: [server.auth] }, AccountController.passwordUpdate);
  return server;
};
