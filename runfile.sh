#!/bin/bash
cd DDL/
for filename in $(ls -1 * | sort -n); do
        cat $filename >> schema.sql;
done
mysql -h $DATASOURCE_URL -P $DATASOURCE_PORT -u $DATASOURCE_USERNAME -p$DATASOURCE_PASSWORD < schema.sql
rm schema.sql

cd ../DML/
for filename in $(ls -1 * | sort -n); do
	cat $filename >> schema.sql;
done

mysql -h $DATASOURCE_URL -P $DATASOURCE_PORT -u $DATASOURCE_USERNAME -p$DATASOURCE_PASSWORD < schema.sql
rm schema.sql

