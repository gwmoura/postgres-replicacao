# http://nervinformatica.com.br/blog/index.php/2016/12/31/instalacao-postgresql-9-6-em-centos-7/
yum -y install https://download.postgresql.org/pub/repos/yum/9.6/redhat/rhel-7-x86_64/pgdg-centos96-9.6-3.noarch.rpm
yum -y install postgresql96 postgresql96-devel postgresql96-contrib postgresql96-libs postgresql96-test postgresql96-server postgresql96-docs
systemctl enable postgresql-9.6
