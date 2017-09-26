sh /vagrant/scripts/install_postgres.sh
sudo mkdir -p /var/lib/postgresql/archive/
chown -R postgres:postgres /var/lib/postgresql/archive/
su postgres
key=$(cat /vargrant/master/id_rsa.pub)
mkdir ~/.ssh
echo $key >> ~/.ssh/authorized_keys
chmod 0600 ~/.ssh/authorized_keys
exit
sudo cp /vagrant/slave/pg_hba.conf /etc/postgresql/9.6/main/pg_hba.conf
sudo cp /vagrant/slave/postgresql.conf /etc/postgresql/9.6/main/postgresql.conf
sudo cp /vagrant/slave/recovery.conf /etc/postgresql/9.6/main/recovery.conf
sudo service postgresql restart
