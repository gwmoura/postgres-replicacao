source /etc/profile.d/postgres_envs.sh
# 192.168.33.10 is the master
# echo "postgres" | su postgres -c "psql -c \"select pg_start_backup('initial_backup');\""
# rsync -cva --inplace --exclude=*pg_xlog* $PGDATA/ 192.168.33.11:$PGDATA/
# echo "postgres" | su postgres -c "psql -c \"select pg_stop_backup();\""

# echo "postgres" | su postgres -c "psql -c \"select pg_start_backup('initial_backup');\""
# rsync -cva --inplace --exclude=*pg_xlog* $PGDATA/ 192.168.33.12:$PGDATA/
# echo "postgres" | su postgres -c "psql -c \"select pg_stop_backup();\""

# This will remove the data directory on the slave - careful!
echo "postgres" | su postgres -c "pg_ctl stop"
rm -rf $PGDATA
echo "postgres" | su postgres -c "echo '12345' | pg_basebackup -h 10.142.0.2 -D $PGDATA -U replicacao -v -P"
chown -R postgres:postgres $PGDATA
rm $PGDATA/recovery.conf
echo "standby_mode = 'on'" >> $PGDATA/recovery.conf
echo "primary_conninfo = 'user=replicacao password=12345 host=10.142.0.2 port=5432 sslmode=prefer sslcompression=1 krbsrvname=postgres'" >> $PGDATA/recovery.conf
chown -R postgres:postgres $PGDATA/recovery.conf

sed -i -e 's/#hot_standby = off/hot_standby = on/g' $PGDATA/postgresql.conf

echo "postgres" | su postgres -c "pg_ctl start"

# setup postgresql.conf

# rm -rf "$PGDATA/backup_label"
# echo "postgres" | su postgres -c "pg_resetxlog -f $PGDATA"
# echo "postgres" | su postgres -c "pg_ctl start"
# echo "postgres" | su postgres -c "pg_ctl status"
