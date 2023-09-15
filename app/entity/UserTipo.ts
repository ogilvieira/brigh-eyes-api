import { Entity, Column, PrimaryGeneratedColumn, OneToMany } from "typeorm"
import { MinLength } from 'class-validator';
import { User } from "./User";
  
@Entity()
export class UserTipo {

    @PrimaryGeneratedColumn()
    id: number

    @Column({ nullable: false, unique: true })
    @MinLength(2, {
        message: 'Nome de chave curto demais.'
    })
    key: string
    
    @OneToMany(() => User, (user) => user.tipo)

    @Column()
    @MinLength(2, {
        message: 'Nome curto demais.'
    })
    titulo: string
}
