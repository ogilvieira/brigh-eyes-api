import "reflect-metadata"
import { DataSource, DataSourceOptions } from "typeorm"

export const DataBaseOptions: DataSourceOptions = {
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

export async function Database() {
   
    const dataSource = new DataSource(DataBaseOptions);

    try {
        await dataSource.initialize();
        return dataSource;
    } catch (err) {
        console.error(err);
        throw err;
    };

}