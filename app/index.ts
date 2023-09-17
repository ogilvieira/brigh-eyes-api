import DotEnv from 'dotenv';
DotEnv.config();
import createServer from './server';

(async () => {
    try {
        const server = await createServer();
        server.listen({ host: (process.env.HOST ?? 'localhost'), port: +(process.env.PORT ?? 8080)}, (err, address) => {        
          if(err) {
            console.error(err);
            server.log.error(err);
            process.exit(1)
          }
          console.info('listen on %s', address)
        });

    } catch (err) {
      console.error(err);
    }
})();
