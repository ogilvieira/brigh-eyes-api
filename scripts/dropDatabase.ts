import DotEnv from 'dotenv';
DotEnv.config();
import { dropDatabase } from 'typeorm-extension';
import { DataBaseOptions } from '@plugins/database';


(async() => {
    await dropDatabase({
        options: {
            ...DataBaseOptions,
            logging: 'all'
        }
    });
})();