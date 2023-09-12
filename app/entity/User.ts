import { Entity, Column, PrimaryGeneratedColumn, DeleteDateColumn, ManyToOne, JoinColumn, BeforeUpdate, BeforeInsert, CreateDateColumn, UpdateDateColumn } from "typeorm"
import { IsEmail, MinLength } from 'class-validator';
import { UserTipo } from '@entity/UserTipo';
import bcrypt from 'bcryptjs';

@Entity()
export class User {

    @PrimaryGeneratedColumn()
    id: number

    @Column({ nullable: false })
    @MinLength(3, { message: 'Nome curto demais.' })
    nome: string;

    @Column()
    @MinLength(3, { message: 'Sobrenome curto demais.' })
    sobrenome: string;

    @Column()
    @MinLength(11, { message: 'CPF curto demais.' })
    cpf: string;

    @Column({ nullable: false, unique: true })
    @IsEmail()
    email: string;

    @Column({ nullable: false })
    @MinLength(6, { message: "Senha muito curta." })
    senha: string;

    @BeforeInsert()
    @BeforeUpdate()
    hashPassword() {
      const salt = bcrypt.genSaltSync();
      this.senha = bcrypt.hashSync(this.senha, salt);
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
