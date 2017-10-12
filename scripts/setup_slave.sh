sh /vagrant/scripts/install_dependencies.sh
sh /vagrant/scripts/enable_ssh_login.sh
sh /vagrant/scripts/install_postgres.sh
source /etc/profile.d/postgres_envs.sh
echo "postgres" | su postgres -c "pg_ctl stop"
# sh /vagrant/scripts/replicate.sh
chown -R postgres:postgres $PGDATA
