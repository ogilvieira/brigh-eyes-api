#!/bin/bash
set -e
export PGPASSWORD=$POSTGRES_PASSWORD;
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
  \connect $APP_DB_NAME $APP_DB_USER
  BEGIN;
    CREATE TABLE public."user" (
      id integer NOT NULL,
      nome character varying NOT NULL,
      sobrenome character varying NOT NULL,
      cpf character varying NOT NULL,
      telefone character varying NOT NULL,
      nascimento date NOT NULL,
      email character varying NOT NULL,
      senha character varying NOT NULL,
      tipo_key character varying DEFAULT 'cliente'::character varying NOT NULL,
      deleted_at timestamp without time zone,
      created_at timestamp without time zone DEFAULT now() NOT NULL,
      updated_at timestamp without time zone DEFAULT now() NOT NULL
    );
    INSERT INTO public."user" (id,nome,sobrenome,cpf,telefone,nascimento,email,senha,tipo_key,deleted_at,created_at,updated_at) VALUES
      (1,'Ariane','Araújo Cabral de Figueiredo','63656803099','64981872573','1996-12-05','ariane.figueiredo@senac.com.br','\$2a\$10\$xnZad5hsqKB71ehb32wXo.Kgf.K5grKr6AUZ10x53Uns5TUalXghS','cliente',NULL,'2023-09-13 21:07:51.074898','2023-09-13 21:07:51.074898'),
      (2,'David','Santana da Silva','64656289027','9634671554','1996-12-05','david.silva@senac.com.br','\$2a\$10\$U/a84HndUz4dU0WPJ8Fcwu4KPjBptc8kD4yKOiUrwe0b8mtXMbeh.','editor',NULL,'2023-09-13 21:07:51.074898','2023-09-13 21:07:51.074898'),
      (2,'Felipe','Valli','18917658091','5523223908','1996-12-05','felipe.valli@senac.com.br','\$2a\$10\$4E/PINxwmWijAFRXP66.dOTQBL5OdLOFg45pHafl.ggU8svzxBe5K','cliente',NULL,'2023-09-13 21:07:51.074898','2023-09-13 21:07:51.074898'),
      (4,'Gilmair','Vieira Barros','26904048000','9528486445','1996-12-05','gilmair.barros@senac.com.br','\$2a\$10\$b2x76V3rDoqR3Q0BNsFyQOFUXLbhENpPHO0g9hUaUTwzmXW.8s8nS','gerente',NULL,'2023-09-13 21:07:51.074898','2023-09-13 21:07:51.074898'),
      (5,'Ignacio','Javier Mourullo','89812945008','9235555768','1996-12-05','ignacio.mourullo@senac.com.br','\$2a\$10\$s/wjLtO8t9zICKSZ5EoYa.Dkfumv7vywmWdD4jzh8p9eRxV/iECYC','editor',NULL,'2023-09-13 21:07:51.074898','2023-09-13 21:07:51.074898'),
      (6,'Josué','Domingues de Oliveira Neto','83717924095','7939426297','1996-12-05','josué.neto@senac.com.br','\$2a\$10\$hsbtW3OB1A6pdIjJAISeVuhE9nlguSIZp74GgQ12lOhTKduGlCQUC','cliente',NULL,'2023-09-13 21:07:51.074898','2023-09-13 21:07:51.074898'),
      (7,'Lucas','Souza Pereira','48511886095','8231134243','1996-12-05','lucas.pereira@senac.com.br','\$2a\$10\$A2wgx5ww.luVaP.9BiqHIOe3YFRSSo5u5cHALWAbLrN6p7BbkCJoi','gerente',NULL,'2023-09-13 21:07:51.074898','2023-09-13 21:07:51.074898');
  COMMIT;
EOSQL

