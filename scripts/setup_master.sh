sh /vagrant/scripts/install_postgres.sh
# copie os aquivos de consfiguração
psql -U postgres -c "create user replicacao REPLICATION password '12345';"
su postgres
key=$(cat /vargrant/slave/id_rsa.pub)
mkdir ~/.ssh
echo $key >> ~/.ssh/authorized_keys
chmod 0600 ~/.ssh/authorized_keys
exit
sudo cp /vagrant/master/pg_hba.conf /etc/postgresql/9.6/main/pg_hba.conf
sudo cp /vagrant/master/postgresql.conf /etc/postgresql/9.6/main/postgresql.conf
service postgresql restart
