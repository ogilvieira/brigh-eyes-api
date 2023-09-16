import { Entity, Column, PrimaryGeneratedColumn, ManyToOne, JoinColumn } from "typeorm"
import { IsCreditCard, Length, MinLength } from 'class-validator';
import { User } from '@entity/User';

@Entity()
export class Cartao {

    @PrimaryGeneratedColumn()
    id: number

    @ManyToOne(() => User)
    @JoinColumn({ name: "user_id", referencedColumnName: "id" })
    user: User;   

    @Column({ nullable: false })
    user_id: number

    @Column({ nullable: false })
    @IsCreditCard()
    numero: string

    @Column({ nullable: false })
    @MinLength(2, {
        message: 'Nome no Cartão curto demais.'
    })
    nome: string

    @Column({ nullable: false })
    @Length(5, 5, {
        message: 'Data e expiração precisa estar no formato MM/AA.'
    })
    data_expiracao: string
}
