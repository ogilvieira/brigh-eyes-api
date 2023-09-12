import { Entity, Column, PrimaryGeneratedColumn, ManyToOne, JoinColumn } from "typeorm"
import { Length, MinLength } from 'class-validator';
import { User } from '@entity/User';

@Entity()
export class Cartao {

    @PrimaryGeneratedColumn()
    id: number

    @ManyToOne(() => User)
    @JoinColumn({ name: "user_id", referencedColumnName: "id" })
    user: User;

    @Column({ nullable: false })
    @Length(16, 16, {
        message: 'Número de cartão curto demais.'
    })
    numero: string

    @Column({ nullable: false })
    @MinLength(3, {
        message: 'Nome no Cartão curto demais.'
    })
    nome: string

    @Column({ nullable: false })
    @Length(4, 4, {
        message: 'Data e expiração precisa estar no formato MM/AA.'
    })
    data_expiracao: string
}
