#!/bin/bash
set -e
export PGPASSWORD=$POSTGRES_PASSWORD;
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
  \connect $APP_DB_NAME $APP_DB_USER
  BEGIN;
    CREATE TABLE public.cartao (
      id integer NOT NULL,
      numero character varying NOT NULL,
      nome character varying NOT NULL,
      data_expiracao character varying NOT NULL,
      user_id integer
    );
  COMMIT;
EOSQL

