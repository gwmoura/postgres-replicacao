#### passos

* `vagrant up`

#### config master

* `vagrant ssh master`
* `sudo su` - para logar como root
* `cd /opt`
* `/vagrant/scripts/setup_master.sh`
* `su postgres`
* `source /etc/profile.d/postgres_envs.sh`
* `psql`

#### config slaves

#### slave1
* `vagrant ssh slave`
* `sudo su` - para logar como root
* `cd /opt`
* `/vagrant/scripts/setup_slave.sh`
* `/vagrant/scripts/replicate.sh`
* `su postgres`
* `source /etc/profile.d/postgres_envs.sh`
* `psql`

#### slave2
* `vagrant ssh slave2`
* `sudo su` - para logar como root
* `cd /opt`
* `/vagrant/scripts/setup_slave.sh`
* `/vagrant/scripts/replicate.sh`
* `su postgres`
* `source /etc/profile.d/postgres_envs.sh`
* `psql`
