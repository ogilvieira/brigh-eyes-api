import fastify from 'fastify'
import Database from '@plugins/database';

async function createServer() {

  try {
    await Database();
    const server = fastify({ logger: (/true/).test(process.env.SERVER_LOG || '') });
  
    return server;
  
  } catch (err) {
    console.error(err);
    throw err;
  }
}

export default createServer;