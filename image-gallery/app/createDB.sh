#!/bin/bash
set -e
echo "Start db creation"
cp "$IG_PASSWD_FILE" ~/.pgpass
chmod 0600 ~/.pgpass
psql -h $PG_HOST -p $PG_PORT -U $IG_USER <<- EOSQL
     create table users (username varchar(100) not null primary key, password varchar(100), full_name varchar(200));
     insert into users values ('augrader', 'cpsc4973', 'Aubie');
EOSQL
echo "Done"
