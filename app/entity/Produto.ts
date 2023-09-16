import { Entity, Column, PrimaryGeneratedColumn, DeleteDateColumn, CreateDateColumn, UpdateDateColumn } from "typeorm"
import { IsNumber, MinLength, Min, IsNotEmpty } from 'class-validator';
  
@Entity()
export class Produto {

    @PrimaryGeneratedColumn()
    id: number


    @Column()
    @IsNotEmpty()
    name: string

    @Column({ nullable: true })
    fabricante: string

    @IsNotEmpty()
    @Column()
    imagem: string

    @IsNotEmpty()
    @Column()
    @MinLength(2, {
        message: 'Descrição curta demais.'
    })
    descricao: string

    @IsNotEmpty()
    @Min(1)
    @IsNumber({ maxDecimalPlaces: 2 })
    @Column('decimal', { precision: 9, scale: 2, nullable: false, default: 0 })
    preco: number

    @DeleteDateColumn()
    deleted_at: Date;

    @CreateDateColumn()
    created_at: Date;

    @UpdateDateColumn()
    updated_at: Date;
}
