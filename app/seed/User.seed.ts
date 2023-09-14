import { Seeder } from 'typeorm-extension';
import { DataSource } from 'typeorm';
import { User } from '@entity/User';

export default class UserSeeder implements Seeder {
    public async run(
        dataSource: DataSource,
    ): Promise<any> {       
        const repository = dataSource.getRepository(User);
        const users = repository.create([
            {
                nome: 'Ariane',
                sobrenome: 'Araújo Cabral de Figueiredo',
                email: 'ariane.figueiredo@senac.com.br',
                senha: "123456",
                nascimento: "1996-12-05",
                cpf: "63656803099",
                telefone: "64981872573"
            },
            {
                nome: 'David',
                sobrenome: 'Santana da Silva',
                email: 'david.silva@senac.com.br',
                senha: "123456",
                tipo_key: "editor",
                nascimento: "1996-12-05",
                cpf: "64656289027",
                telefone: "9634671554"
            },
            {
                nome: 'Felipe',
                sobrenome: 'Valli',
                email: 'felipe.valli@senac.com.br',
                senha: "123456",
                nascimento: "1996-12-05",
                cpf: "18917658091",
                telefone: "5523223908"
            },
            {
                nome: 'Gilmair',
                sobrenome: 'Vieira Barros',
                email: 'gilmair.barros@senac.com.br',
                senha: "123456",
                tipo_key: "gerente",
                nascimento: "1996-12-05",
                cpf: "26904048000",
                telefone: "9528486445"
            },
            {
                nome: 'Ignacio',
                sobrenome: 'Javier Mourullo',
                email: 'ignacio.mourullo@senac.com.br',
                senha: "123456",
                tipo_key: "editor",
                nascimento: "1996-12-05",
                cpf: "89812945008",
                telefone: "9235555768"
            },
            {
                nome: 'Josué',
                sobrenome: 'Domingues de Oliveira Neto',
                email: 'josué.neto@senac.com.br',
                senha: "123456",
                nascimento: "1996-12-05",
                cpf: "83717924095",
                telefone: "7939426297"
            },
            {
                nome: 'Lucas',
                sobrenome: 'Souza Pereira', 
                email: 'lucas.pereira@senac.com.br',
                senha: "123456",
                tipo_key: "gerente",
                nascimento: "1996-12-05",
                cpf: "48511886095",
                telefone: "8231134243"
            }
        ]);
        await repository.save(users);

    }
}
