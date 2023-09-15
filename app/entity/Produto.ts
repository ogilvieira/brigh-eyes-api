import { Entity, Column, PrimaryGeneratedColumn, DeleteDateColumn, CreateDateColumn, UpdateDateColumn } from "typeorm"
import { MinLength } from 'class-validator';
  
@Entity()
export class Produto {

    @PrimaryGeneratedColumn()
    id: number

    @Column()
    @MinLength(2, {
        message: 'Nome de Produto curto demais.'
    })
    name: string

    @Column()
    fabricante: string

    @Column()
    imagem: string

    @Column()
    @MinLength(2, {
        message: 'Descrição curta demais.'
    })
    descricao: string

    @Column('decimal', { precision: 9, scale: 2, nullable: false, default: 0 })
    preco: number

    @DeleteDateColumn()
    deleted_at: Date;

    @CreateDateColumn()
    created_at: Date;

    @UpdateDateColumn()
    updated_at: Date;
}
