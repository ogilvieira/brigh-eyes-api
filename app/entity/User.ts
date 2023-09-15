import { Entity, Column, PrimaryGeneratedColumn, DeleteDateColumn, ManyToOne, JoinColumn, BeforeUpdate, BeforeInsert, CreateDateColumn, UpdateDateColumn } from "typeorm"
import { IsEmail, MinLength, IsMobilePhone } from 'class-validator';
import { UserTipo } from '@entity/UserTipo';
import bcrypt from 'bcryptjs';
import { IsCPF } from 'brazilian-class-validator';

@Entity()
export class User {

    @PrimaryGeneratedColumn()
    id: number

    @Column({ nullable: false })
    @MinLength(2, { message: 'Nome curto demais.' })
    nome: string;

    @Column()
    @MinLength(2, { message: 'Sobrenome curto demais.' })
    sobrenome: string;

    @Column({ unique: true })
    @IsCPF()
    cpf: string;

    @Column({ unique: true })
    @IsMobilePhone('pt-BR')
    telefone: string;

    @Column({ 
      type: 'date', 
      nullable: false
   })
    nascimento: string;

    @Column({ nullable: false, unique: true })
    @IsEmail()
    email: string;

    @Column({ nullable: false })
    @MinLength(6, { message: "Senha muito curta." })
    senha: string;

    @BeforeInsert()
    @BeforeUpdate()
    hashPassword() {
      if( this.senha ) {
        const salt = bcrypt.genSaltSync();
        this.senha = bcrypt.hashSync(this.senha, salt);
      }
    }
    
    @ManyToOne(() => UserTipo)
    @JoinColumn({ name: "tipo_key", referencedColumnName: "key" })
    tipo: UserTipo;

    @Column({ nullable: false, default: "cliente" })
    tipo_key: string

    @DeleteDateColumn()
    deleted_at: Date;

    @CreateDateColumn()
    created_at: Date;

    @UpdateDateColumn()
    updated_at: Date;
    
}
