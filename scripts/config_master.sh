POSTGRESQL_CONF=$PGDATA/postgresql.conf

sed -i -e 's/shared_buffers = 128MB/shared_buffers = 8GB/g' $POSTGRESQL_CONF
sed -i -e 's/#effective_cache_size = 4GB/effective_cache_size = 24GB/g' $POSTGRESQL_CONF
sed -i -e 's/#work_mem = 4MB/work_mem = 4MB/g' $POSTGRESQL_CONF
sed -i -e 's/#maintenance_work_mem = 64MB/maintenance_work_mem = 2GB/g' $POSTGRESQL_CONF
sed -i -e 's/#max_wal_size = 1GB/max_wal_size = 2GB/g' $POSTGRESQL_CONF
sed -i -e 's/#min_wal_size = 80MB/min_wal_size = 1GB/g' $POSTGRESQL_CONF
sed -i -e 's/#checkpoint_completion_target = 0.5/checkpoint_completion_target = 0.7/g' $POSTGRESQL_CONF
sed -i -e 's/#wal_buffers = -1/wal_buffers = 16MB/g' $POSTGRESQL_CONF
sed -i -e 's/max_connections = 100/max_connections = 2000/g' $POSTGRESQL_CONF
