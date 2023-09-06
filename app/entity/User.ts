import { Entity, Column, PrimaryGeneratedColumn, DeleteDateColumn, ManyToOne, JoinColumn } from "typeorm"
import { IsEmail, MinLength } from 'class-validator';
import { UserTipo } from '@entity/UserTipo';

@Entity()
export class User {

    @PrimaryGeneratedColumn()
    id: number

    @Column({ nullable: false })
    @MinLength(3, {
        message: 'Nome curto demais.'
    })
    nome: string;

    @MinLength(3, {
        message: 'Sobrenome curto demais.'
    })
    sobrenome: string;

    @Column({ nullable: false, unique: true })
    @IsEmail()
    email: string;

    @Column({ nullable: false })
    @MinLength(6, {
        message: "Senha muito curta."
    })
    senha: string;
    
    @ManyToOne(() => UserTipo)
    @JoinColumn({ name: "tipo_key", referencedColumnName: "key" })
    tipo: UserTipo;

    @Column({ nullable: false, default: "cliente" })
    tipo_key: string

    @DeleteDateColumn()
    deleted_at: Date;
}
