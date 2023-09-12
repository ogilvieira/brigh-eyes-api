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
      nascimento date NOT NULL,
      email character varying NOT NULL,
      senha character varying NOT NULL,
      tipo_key character varying DEFAULT 'cliente'::character varying NOT NULL,
      deleted_at timestamp without time zone,
      created_at timestamp without time zone DEFAULT now() NOT NULL,
      updated_at timestamp without time zone DEFAULT now() NOT NULL
    );
    INSERT INTO public."user" (id,nome,sobrenome,nascimento,cpf,email,senha,tipo_key,deleted_at,created_at,updated_at) VALUES
      (1,'Ariane','Araújo Cabral de Figueiredo','1996-12-05','63656803099','ariane.figueiredo@senac.com.br','\$2a\$10\$ZyqmbR1BjymOt5Cf0Nxm3.fG4b0jQw.gztzBBcyEy/sc7U7U9Fana','cliente',NULL,'2023-09-12 07:08:12.938753','2023-09-12 07:08:12.938753'),
      (2,'David','Santana da Silva','1996-08-03','64656289027','david.silva@senac.com.br','\$2a\$10\$zBYclCajKK7HSXBhfIgeNexZRJwQFINWK5GONRNGPW6HNNZEnDSOe','editor',NULL,'2023-09-12 07:08:12.938753','2023-09-12 07:08:12.938753'),
      (3,'Felipe','Valli','1990-05-11','18917658091','felipe.valli@senac.com.br','\$2a\$10\$r3khVwAnW4tu2roIwsu4Ru/Nby1yIuvCbSbYFJoMM0P/Q..Vy.1LS','cliente',NULL,'2023-09-12 07:08:12.938753','2023-09-12 07:08:12.938753'),
      (4,'Gilmair','Vieira Barros','1985-01-02','26904048000','gilmair.barros@senac.com.br','\$2a\$10\$YaDy3aIbfWj5GJp/tPEFy.IXLjiJC64MZY7wHFPipbum1QGhP6Iuy','gerente',NULL,'2023-09-12 07:08:12.938753','2023-09-12 07:08:12.938753'),
      (5,'Ignacio','Javier Mourullo','1988-03-02','89812945008','ignacio.mourullo@senac.com.br','\$2a\$10\$1gNnZ5hqYfpHstTTldn9GOai.QSRI2MAkcLx4sTiLtd3i1kIzKN1.','editor',NULL,'2023-09-12 07:08:12.938753','2023-09-12 07:08:12.938753'),
      (6,'Josué','Domingues de Oliveira Neto','1979-04-02','83717924095','josue.neto@senac.com.br','\$2a\$10\$7ptD5Y1tdctYzi2l3VIOfuInL3mGQESaSpEQCesFOjIayL0yR3LQa','cliente',NULL,'2023-09-12 07:08:12.938753','2023-09-12 07:08:12.938753'),
      (7,'Lucas','Souza Pereira','1989-03-02','48511886095','lucas.pereira@senac.com.br','\$2a\$10\$oSb9ei3HWkI5.0FSKYWaTud.V0CeHhssd8f/7bZiFGxsFoGeuQo8q','gerente',NULL,'2023-09-12 07:08:12.938753','2023-09-12 07:08:12.938753');
  COMMIT;
EOSQL

