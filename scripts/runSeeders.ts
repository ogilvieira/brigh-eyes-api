import DotEnv from 'dotenv';
DotEnv.config();
import { runSeeders, createDatabase } from 'typeorm-extension';
import { AppDataSource, DataBaseOptions } from '@plugins/database';
import { DataSource } from "typeorm"

async function seedOneByOne(seeds: string[], dataSource: DataSource) {
    
    if(!seeds.length){ return; }

    const seedOfTime: string = seeds.pop() ?? '';
    
    console.info(`Seed: "${seedOfTime}\n\n"`);

    try {
        await runSeeders(dataSource, {
            seeds: [seedOfTime]
        });

        return seedOneByOne(seeds, dataSource);
    } catch(err) {
        console.error(err);
    }
}


(async() => {
    
    await createDatabase({
        options: {
            ...DataBaseOptions,
            logging: 'all'
        },
        ifNotExist: true
    });

    const dataSource = await AppDataSource.initialize();

    const seeds = [
        './app/seed/User.seed.ts',
        './app/seed/UserTipo.seed.ts'
    ];

    await seedOneByOne(seeds, dataSource);



})();
