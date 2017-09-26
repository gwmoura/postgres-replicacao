sh /vagrant/scripts/install_postgres.sh
# copie os aquivos de consfiguração
psql -U postgres -c "create user replicacao REPLICATION password '12345';"
key=$(cat /vagrant/slave/id_rsa.pub)
su postgres -c "mkdir ~/.ssh"
su postgres -c "echo $key >> ~/.ssh/authorized_keys"
su postgres -c "chmod 0600 ~/.ssh/authorized_keys"
sudo cp /vagrant/master/id_rsa* /var/lib/postgresql/.ssh/
sudo cp /vagrant/master/pg_hba.conf /etc/postgresql/9.6/main/pg_hba.conf
sudo cp /vagrant/master/postgresql.conf /etc/postgresql/9.6/main/postgresql.conf
service postgresql restart
