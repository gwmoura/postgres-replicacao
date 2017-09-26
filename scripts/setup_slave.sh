sh /vagrant/scripts/install_postgres.sh
sudo mkdir -p /var/lib/postgresql/archive/
sudo cp /vagrant/slave/pg_hba.conf /etc/postgresql/9.6/main/pg_hba.conf
sudo cp /vagrant/slave/postgresql.conf /etc/postgresql/9.6/main/postgresql.conf
sudo cp /vagrant/slave/recovery.conf /etc/postgresql/9.6/main/recovery.conf
sudo service postgresql restart
