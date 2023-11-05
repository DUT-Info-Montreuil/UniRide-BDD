FROM postgres:13

COPY schema.sql /docker-entrypoint-initdb.d/schema.sql
COPY insertion_dev.sql /docker-entrypoint-initdb.d/zinsertion_dev.sql

EXPOSE 5432

CMD ["postgres"]