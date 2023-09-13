import { Entity, Column, PrimaryGeneratedColumn, DeleteDateColumn, CreateDateColumn, UpdateDateColumn } from "typeorm"
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

    @Column('decimal', { precision: 6, scale: 2 })
    preco: number

    @DeleteDateColumn()
    deleted_at: Date;

    @CreateDateColumn()
    created_at: Date;

    @UpdateDateColumn()
    updated_at: Date;
}
