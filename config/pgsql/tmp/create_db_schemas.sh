#!/bin/bash
set -e

POSTGRES="psql --username ${POSTGRES_USER} ${POSTGRES_DB}"

echo "----------------------------------"
echo "Creating initial schema for all DBs"
echo "----------------------------------"
$POSTGRES -f /dbInit.sql
