import fastify from 'fastify';
import { Database } from '@plugins/database';
import cors from '@fastify/cors';
import fastifyJwt from '@fastify/jwt';

async function createServer() {

  try {
    await Database();
    const server = fastify({ logger: (/true/).test(process.env.SERVER_LOG || '') });
    
    await server.register(fastifyJwt, {
      secret: (process.env.JWT_SECRET ?? '')
    })

    await server.register(cors);
  

    return server;
  
  } catch (err) {
    console.error(err);
    throw err;
  }
}

export default createServer;