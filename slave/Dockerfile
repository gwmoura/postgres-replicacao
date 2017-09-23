FROM postgres:9.6
RUN apt-get update
RUN apt-get install nano
ADD pg_hba.conf /var/lib/postgresql/data/pg_hba.conf
ADD postgresql.conf /var/lib/postgresql/data/postgresql.conf
# ADD recovery.conf /opt/pgsql/recovery.conf
