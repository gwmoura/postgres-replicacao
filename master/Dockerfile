FROM postgres:9.6
# FROM centos/postgresql-95-centos7
# FROM centos:7
# WORKDIR /opt
# RUN yum -y update
# RUN yum -y install https://download.postgresql.org/pub/repos/yum/9.6/redhat/rhel-7-x86_64/pgdg-centos96-9.6-3.noarch.rpm
# RUN yum -y install postgresql96 postgresql96-devel postgresql96-contrib postgresql96-libs postgresql96-test postgresql96-server postgresql96-docs
# ENV PGDATA /var/lib/postgresql/data
# # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# VOLUME /var/lib/postgresql/data
# RUN systemctl enable postgresql-9.6
# RUN /usr/pgsql-9.6/bin/postgresql96-setup initdb
ADD pg_hba.conf /var/lib/postgresql/data/pg_hba.conf
ADD postgresql.conf /var/lib/postgresql/data/postgresql.conf
# ADD start.sql /opt/pgsql/start.sql
