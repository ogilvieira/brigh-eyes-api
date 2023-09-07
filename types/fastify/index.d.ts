/* eslint-disable @typescript-eslint/no-unused-vars */
import Auth from '@plugins/auth';
declare module 'fastify' {
  export interface FastifyInstance<
    HttpServer = Server,
    HttpRequest = IncomingMessage,
    HttpResponse = ServerResponse,
  > {
    auth: Auth;
  }
}
