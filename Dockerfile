FROM postgres:13

COPY schema.sql /docker-entrypoint-initdb.d/schema.sql

EXPOSE 5432

CMD ["postgres"]