import { Entity, Column, PrimaryGeneratedColumn } from "typeorm"
import { MinLength } from 'class-validator';
  
@Entity()
export class Produto {

    @PrimaryGeneratedColumn()
    id: number

    @Column()
    @MinLength(3, {
        message: 'Nome de Produto curto demais.'
    })
    name: string

    @Column()
    fabricante: string

    @Column()
    imagem: string

    @Column()
    @MinLength(3, {
        message: 'Descrição curta demais.'
    })
    descricao: string

    @Column()
    @MinLength(3, {
        message: 'Descrição curta demais.'
    })
    preco: number
}
