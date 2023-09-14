import DotEnv from 'dotenv';
DotEnv.config();
import createServer from './server';

(async () => {
    try {
        const server = await createServer();
        server.listen({ host: (process.env.HOST ?? 'localhost'), port: +(process.env.PORT ?? 8080)}, (err, address) => {
          console.info('listen on %s', address)
          if(err) {
            server.log.error(err);
            process.exit(1)
          }
        });

    } catch (err) {
        console.error(err);
    }
})();
