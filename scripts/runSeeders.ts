import DotEnv from 'dotenv';
DotEnv.config();
import { runSeeder } from 'typeorm-extension';
import { AppDataSource } from '@plugins/database';
import { DataSource } from "typeorm"
import ProdutoSeeder from 'app/seed/Produto.seed';
import UserSeed from 'app/seed/User.seed';
import UserTipoSeeder from 'app/seed/UserTipo.seed';


async function seedOneByOne(seeds: any[], dataSource: DataSource) {
    
    if(!seeds.length){ return; }

    const seedOfTime: string = seeds.shift() ?? '';
    
    console.info(`Seed: "${seedOfTime.constructor.name}"\n\n`);

    try {
        await runSeeder(dataSource, seedOfTime);
        await seedOneByOne(seeds, dataSource);
    } catch(err) {
        console.error(err);
    }
}


(async() => {
    
    const dataSource = await AppDataSource.initialize();

    const seeds = [
      UserTipoSeeder,
      UserSeed,
      ProdutoSeeder
    ];

    await seedOneByOne(seeds, dataSource);



})();
