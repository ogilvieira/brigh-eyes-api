import "reflect-metadata"
import { DataSource, DataSourceOptions } from "typeorm"
import { createDatabase } from "typeorm-extension";
import { SeederOptions } from 'typeorm-extension';

async function Database() {
    const options: DataSourceOptions & SeederOptions = {
        type: "postgres",
        host: process.env.DB_HOST,
        port: Number(process.env.DB_PORT),
        username: process.env.DB_USER,
        password: process.env.DB_PASS,
        database: process.env.DB_NAME,
        synchronize: (/true/).test(process.env.DB_SYNC || ''),
        logging: (/true/).test(process.env.DB_LOG || '') ? 'all' : false,
        entities: ["./app/entity/**/*.ts"]
    };
    
    const dataSource = new DataSource(options);

    try {
        await createDatabase({
            options,
            ifNotExist: true
        });
        
        await dataSource.initialize();
        return dataSource;
    } catch (err) {
        console.error(err);
        throw err;
    };

}

export default Database;
