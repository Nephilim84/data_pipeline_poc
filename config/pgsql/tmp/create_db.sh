#!/bin/bash

# Will create up to 50 databases
# DB_NAME_x and DB_USER_x varibles should be defined

set -e

POSTGRES="psql --username ${POSTGRES_USER} ${POSTGRES_DB}"

export END=50
export i=1; while [[ $i -le $END ]]; do
  var_db_name="DB_NAME_$i"
  var_db_user="DB_USER_$i"
  if [[ -z "${!var_db_name}" ]] || [[ -z "${!var_db_user}" ]] ; then
    break
  fi

  echo "----------------------------------"
  echo "Creating database: ${!var_db_name}"
  echo "----------------------------------"
  $POSTGRES <<EOSQL
CREATE DATABASE "${!var_db_name}" OWNER "${!var_db_user}";
EOSQL
  ((i = i + 1))
done
