#!/bin/bash
set -e
export PGPASSWORD=$POSTGRES_PASSWORD;
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
  \connect $APP_DB_NAME $APP_DB_USER
  BEGIN;
    CREATE TABLE public.endereco (
      id integer NOT NULL,
      cep character varying NOT NULL,
      logradouro character varying NOT NULL,
      numero character varying NOT NULL,
      complemento character varying NOT NULL,
      bairro character varying NOT NULL,
      cidade character varying NOT NULL,
      uf character varying NOT NULL
    );
  COMMIT;
EOSQL

