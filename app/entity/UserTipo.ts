import { Entity, Column, PrimaryGeneratedColumn } from "typeorm"
import { MinLength } from 'class-validator';
  
@Entity()
export class UserTipo {

    @PrimaryGeneratedColumn()
    id: number

    @Column({ nullable: false, unique: true })
    @MinLength(2, {
        message: 'Nome de chave curto demais.'
    })
    key: string

    @Column()
    @MinLength(2, {
        message: 'Nome curto demais.'
    })
    titulo: string
}
