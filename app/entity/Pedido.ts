import { Entity, PrimaryGeneratedColumn, ManyToOne, JoinColumn, Column, CreateDateColumn, UpdateDateColumn, OneToOne } from "typeorm"
import { Produto } from '@entity/Produto';
import { User } from '@entity/User';
import { Cartao } from '@entity/Cartao';
import { Endereco } from "@entity/Endereco";
import { Matches } from 'class-validator';
@Entity()
export class Pedido {

    @PrimaryGeneratedColumn()
    id: number

    @ManyToOne(() => Produto)
    @JoinColumn({ name: "produto_id", referencedColumnName: "id" })
    produto: Produto;
    
    @Column({ nullable: false })
    produto_id: number

    @ManyToOne(() => User)
    @JoinColumn({ name: "user_id", referencedColumnName: "id" })
    user: User;

    @Column({ nullable: false })
    user_id: number

    @ManyToOne(() => Cartao)
    @JoinColumn({ name: "cartao_id", referencedColumnName: "id" })
    cartao: Cartao;

    @Column({ nullable: false })
    cartao_id: number

    @OneToOne(() => Endereco)
    @JoinColumn({ name: "endereco_id", referencedColumnName: "id" })
    endereco: Endereco;

    @Column({ nullable: false })
    endereco_id: number

    @Column({ nullable: false })
    parcelas: number

    @Column('decimal', { precision: 9, scale: 2, nullable: false, default: 0 })
    total: number

    @Column()
    @Matches(/data:application\/pdf;base64,([^"]*)/g, {
      message() {
          return "A receita precisa ser um pdf base64."
      },
    })
    receita: string

    @Column({ nullable: true, default: '' })
    rastreio: string

    @Column({ default: ''})
    status: string

    @CreateDateColumn()
    created_at: Date;

    @UpdateDateColumn()
    updated_at: Date;

}
