#!/bin/bash
set -e
export PGPASSWORD=$POSTGRES_PASSWORD;
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
  \connect $APP_DB_NAME $APP_DB_USER
  BEGIN;
    CREATE TABLE public.pedido (
      id integer NOT NULL,
      parcelas integer NOT NULL,
      total integer NOT NULL,
      receita character varying NOT NULL,
      rastreio character varying NOT NULL,
      status character varying NOT NULL,
      created_at timestamp without time zone DEFAULT now() NOT NULL,
      updated_at timestamp without time zone DEFAULT now() NOT NULL,
      produto_id integer,
      user_id integer,
      cartao_id integer,
      endereco_id integer
    );
  COMMIT;
EOSQL

