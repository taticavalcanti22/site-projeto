#bash

# descomentar para quando quiser recriar o bando de dados ZERADO
# docker run -itd -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=postgres -e PGDATA=/var/lib/postgresql/data/pgdata -p 5432:5432 -v /data:/var/lib/postgresql/data --name postgresql postgres

# backup do banco de daddos airbnb (APENAS)
# docker exec -t postgresql pg_dump -c -U postgres airbnb > dump_`date +%d-%m-%Y"_"%H_%M_%S`_airbnb.sql

# Backup de TODOS os bancos de dados
# docker exec -t postgresql pg_dumpall -c -U postgres > dump_`date +%d-%m-%Y"_"%H_%M_%S`_all.sql

# subir o container do postgresql
docker container start postgresql
docker ps
