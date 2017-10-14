sh /vagrant/scripts/install_dependencies.sh
sh /vagrant/scripts/enable_ssh_login.sh
sh /vagrant/scripts/install_postgres.sh
source /etc/profile.d/postgres_envs.sh
# copie os aquivos de consfiguração
sleep 1
echo "postgres" | su postgres -c "psql -c \"create user replicacao REPLICATION password '12345';\""

# config pg_hba.conf
cp /opt/postgres/9.6.5/data/pg_hba.conf /opt/postgres/9.6.5/data/pg_hba.bkp.conf
echo "host    replication     replicacao      10.142.0.3/32        md5" >> /opt/postgres/9.6.5/data/pg_hba.conf
echo "host    replication     replicacao      10.142.0.4/32        md5" >> /opt/postgres/9.6.5/data/pg_hba.conf

# setup postgresql.conf
POSTGRES_CONF=/opt/postgres/9.6.5/data/postgresql.conf
cp $POSTGRES_CONF /opt/postgres/9.6.5/data/postgresql.bkp.conf
cp /vagrant/master/postgresql.conf $POSTGRES_CONF
chown -R postgres:postgres $PGDATA
service postgresql-9.6 restart
