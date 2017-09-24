sh /vagrant/scripts/install_postgres.sh
# copie os aquivos de consfiguração
sudo cp /vagrant/master/pg_hba.conf /etc/postgresql/9.6/main/pg_hba.conf
sudo cp /vagrant/master/postgresql.conf /etc/postgresql/9.6/main/postgresql.conf
service postgresql restart
psql -U postgres -c "create user replicacao REPLICATION password '12345';"
