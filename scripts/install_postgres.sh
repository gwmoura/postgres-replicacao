# Add PG apt repo:
wget https://github.com/gwmoura/bash-scripts/raw/master/postgres.sh
sh postgres.sh
sleep 1
mkdir -p /opt/pg-bkp/archives/
chown -R postgres:postgres /opt/pg-bkp/archives/
chown -R postgres:postgres /opt/postgres/9.6.5
chown -R postgres:postgres /var/log/postgresql/
source /etc/profile.d/postgres_envs.sh
echo "Successfully created PostgreSQL dev virtual machine."
echo ""
