import fastify, { FastifyReply, FastifyRequest } from 'fastify';
import { AppDataSource } from '@plugins/database';
import fastifyCors from '@fastify/cors';
import fastifyFormBody from '@fastify/formbody';
import fastifyAutoload from '@fastify/autoload';
import fastifyStatic from '@fastify/static';
import "reflect-metadata";

import auth from '@plugins/auth';
import path from 'path';

async function createServer() {

  try {
    await AppDataSource.initialize();
    const server = fastify({ logger: (/true/).test(process.env.SERVER_LOG || '') });
  
    server.register(fastifyCors, { origin: '*' });
    server.register(fastifyFormBody);

    server.get('/', (request: FastifyRequest, reply: FastifyReply) => {
      return reply.send("Ok");
    });

    server.register(auth);

    server.register(fastifyAutoload, {
      dir: path.join(__dirname, '/routes')
    });
    
    server.register(fastifyStatic, {
      root: path.join(__dirname, '../public'),
      prefix: '/public/'
    })
  
    return server;
  
  } catch (err) {
    console.error(err);
    throw err;
  }
}

export default createServer;
