import { Seeder } from 'typeorm-extension';
import { DataSource } from 'typeorm';
import { UserTipo } from '@entity/UserTipo';

export default class UserTipoSeeder implements Seeder {
    public async run(
        dataSource: DataSource,
    ): Promise<any> {        
        const repository = dataSource.getRepository(UserTipo);
        await repository.insert([
            {
                key: 'cliente',
                titulo: 'Cliente'
            },
            {
                key: 'vendedor',
                titulo: 'Vendedor'
            },
            {
                key: 'gerente',
                titulo: 'Gerente'
            }
        ]);
    }
}