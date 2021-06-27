FROM postgres:12-alpine
LABEL owner="Kostya Kostyushko"

# Custom initialization scripts
COPY ./create_user.sh /docker-entrypoint-initdb.d/10-create_user.sh
COPY ./create_db.sh /docker-entrypoint-initdb.d/20-create_db.sh
COPY ./dbInit.sql /dbInit.sql
COPY ./create_db_schemas.sh /docker-entrypoint-initdb.d/20-create_db_schemas.sh
