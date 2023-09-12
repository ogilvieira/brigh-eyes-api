#!/bin/bash
set -e
export PGPASSWORD=$POSTGRES_PASSWORD;
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
  \connect $APP_DB_NAME $APP_DB_USER
  BEGIN;
    CREATE TABLE public.produto (
      id integer NOT NULL,
      name character varying NOT NULL,
      fabricante character varying NOT NULL,
      imagem character varying NOT NULL,
      descricao character varying NOT NULL,
      preco integer NOT NULL,
      deleted_at timestamp without time zone,
      created_at timestamp without time zone DEFAULT now() NOT NULL,
      updated_at timestamp without time zone DEFAULT now() NOT NULL
    );
  COMMIT;
EOSQL

