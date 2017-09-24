# Add PG apt repo:
echo "deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main" > /etc/apt/sources.list.d/pgdg.list

# Add PGDG repo key:
wget --quiet -O - https://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | apt-key add -

apt-get update
apt-get -y upgrade
apt-get install -y postgresql-contrib-9.6 postgresql-9.6

echo "Successfully created PostgreSQL dev virtual machine."
echo ""
