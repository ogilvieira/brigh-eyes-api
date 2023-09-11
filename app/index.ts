import DotEnv from 'dotenv';
DotEnv.config();
import createServer from './server';

(async () => {
    try {
        const server = await createServer();
        server.listen({ host: '0.0.0.0', port: +(process.env.PORT ?? 80)}, (err, address) => {
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
