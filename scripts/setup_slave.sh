sh /vagrant/scripts/install_postgres.sh
sudo mkdir -p /var/lib/postgresql/archive/
chown -R postgres:postgres /var/lib/postgresql/archive/
key=$(cat /vagrant/master/id_rsa.pub)
su postgres -c "mkdir ~/.ssh"
su postgres -c "echo $key >> ~/.ssh/authorized_keys"
su postgres -c "chmod 0600 ~/.ssh/authorized_keys"
sudo cp /vagrant/slave/id_rsa* /var/lib/postgresql/.ssh/
sudo cp /vagrant/slave/pg_hba.conf /etc/postgresql/9.6/main/pg_hba.conf
sudo cp /vagrant/slave/postgresql.conf /etc/postgresql/9.6/main/postgresql.conf
sudo cp /vagrant/slave/recovery.conf /etc/postgresql/9.6/main/recovery.conf
sudo service postgresql restart
