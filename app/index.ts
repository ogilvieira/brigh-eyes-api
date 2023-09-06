import DotEnv from 'dotenv';
DotEnv.config();
import createServer from './server';

(async () => {
    try {
        const server = await createServer();
        server.listen({ port: +(process.env.PORT ?? 80)});
    } catch (err) {
        console.error(err);
    }
})();
