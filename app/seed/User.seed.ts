import { Seeder } from 'typeorm-extension';
import { DataSource } from 'typeorm';
import { User } from '@entity/User';

export default class UserSeeder implements Seeder {
    public async run(
        dataSource: DataSource,
    ): Promise<any> {       
        const repository = dataSource.getRepository(User);
        // const users = repository.create([
        //     {
        //         nome: 'Ariane',
        //         sobrenome: 'Araújo Cabral de Figueiredo',
        //         email: 'ariane.figueiredo@senac.com.br',
        //         senha: "123456",
        //         cpf: "63656803099"
        //     },
        //     {
        //         nome: 'David',
        //         sobrenome: 'Santana da Silva',
        //         email: 'david.silva@senac.com.br',
        //         senha: "123456",
        //         tipo_key: "editor",
        //         cpf: "64656289027"
        //     },
        //     {
        //         nome: 'Felipe',
        //         sobrenome: 'Valli',
        //         email: 'felipe.valli@senac.com.br',
        //         senha: "123456",
        //         cpf: "18917658091"
        //     },
        //     {
        //         nome: 'Gilmair',
        //         sobrenome: 'Vieira Barros',
        //         email: 'gilmair.barros@senac.com.br',
        //         senha: "123456",
        //         tipo_key: "gerente",
        //         cpf: "26904048000"
        //     },
        //     {
        //         nome: 'Ignacio',
        //         sobrenome: 'Javier Mourullo',
        //         email: 'ignacio.mourullo@senac.com.br',
        //         senha: "123456",
        //         tipo_key: "editor",
        //         cpf: "89812945008"
        //     },
        //     {
        //         nome: 'Josué',
        //         sobrenome: 'Domingues de Oliveira Neto',
        //         email: 'josué.neto@senac.com.br',
        //         senha: "123456",
        //         cpf: "83717924095"
        //     },
        //     {
        //         nome: 'Lucas',
        //         sobrenome: 'Souza Pereira', 
        //         email: 'lucas.pereira@senac.com.br',
        //         senha: "123456",
        //         tipo_key: "gerente",
        //         cpf: "48511886095"
        //     }
        // ]);
        const users = repository.create([]);
        await repository.save(users);

    }
}
