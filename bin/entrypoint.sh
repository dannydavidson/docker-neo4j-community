#!/bin/bash -eu

mkdir -p /var/lib/neo4j/data/dbms
cp /var/lib/neo4j/auth /var/lib/neo4j/data/dbms;
echo 'AUTH VALUES:'
echo $(cat /var/lib/neo4j/data/dbms/auth);

/docker-entrypoint.sh "$@"
