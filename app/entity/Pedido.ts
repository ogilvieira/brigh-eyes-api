import { Entity, PrimaryGeneratedColumn, ManyToOne, JoinColumn, Column } from "typeorm"
import { Produto } from '@entity/Produto';
import { User } from '@entity/User';
import { Cartao } from '@entity/Cartao';
  
@Entity()
export class Pedido {

    @PrimaryGeneratedColumn()
    id: number

    @ManyToOne(() => Produto)
    @JoinColumn({ name: "produto_id", referencedColumnName: "id" })
    produto: Produto;

    @ManyToOne(() => User)
    @JoinColumn({ name: "user_id", referencedColumnName: "id" })
    user: User;

    @ManyToOne(() => Cartao)
    @JoinColumn({ name: "cartao_id", referencedColumnName: "id" })
    cartao: Cartao;

    @Column({ nullable: false })
    parcelas: number

    @Column({ nullable: false })
    total: number

    @Column()
    receita: string

}
