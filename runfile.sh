#!/bin/bash
for filename in DDL/*.sql; do
        cat $filename >> schema.sql;
done

mysql -u $DB_USER -p$DB_PASSWORD < schema.sql

rm schema.sql

for filename in DML/*.sql; do
        cat $filename >> schema.sql;
done

mysql -u $DB_USER -p$DB_PASSWORD < schema.sql

rm schema.sql
