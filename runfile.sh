#!/bin/bash
cd DDL/
for filename in $(ls -1 * | sort -n); do
        cat $filename >> schema.sql;
done
mv schema.sql ..
cd ..
mysql -u $DB_USER -p$DB_PASSWORD < schema.sql
rm schema.sql

cd DML/
for filename in $(ls -1 * | sort -n); do
	cat $filename >> schema.sql;
done

mv schema.sql ..
cd ..
mysql -u $DB_USER -p$DB_PASSWORD < schema.sql


