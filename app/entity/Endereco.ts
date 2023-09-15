import { Entity, Column, PrimaryGeneratedColumn, OneToOne } from "typeorm"
import { Length, MinLength } from 'class-validator';
import { Pedido } from "./Pedido";
  
@Entity()
export class Endereco {

    @PrimaryGeneratedColumn()
    id: number

    @Column({ nullable: false })
    @MinLength(2, {
        message: 'CEP curto demais.'
    })
    cep: string

    @Column({ nullable: false })
    @MinLength(2, {
        message: 'Logradouro curto demais.'
    })
    logradouro: string

    @Column({ nullable: false })
    numero: string

    @Column()
    complemento: string

    @Column({ nullable: false })
    @MinLength(2, {
        message: 'Nome do Bairro curto demais.'
    })
    bairro: string

    @Column({ nullable: false })
    @MinLength(2, {
        message: 'Nome da Cidade curto demais.'
    })
    cidade: string

    @Column({ nullable: false })
    @Length(2, 2, {
        message: 'UF precisa ter apenas 2 caracteres.'
    })
    uf: string

    @OneToOne(() => Pedido)
    pedido: Pedido

}
