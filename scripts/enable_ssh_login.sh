sed -i -e 's/#PasswordAuthentication yes/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sed -i -e 's/#PermitRootLogin yes/PermitRootLogin yes/g' /etc/ssh/sshd_config
sed -i -e 's/#PubkeyAuthentication yes/PubkeyAuthentication yes/g' /etc/ssh/sshd_config
sed -i -e 's/#AuthorizedKeysFile .ssh\/authorized_keys/AuthorizedKeysFile .ssh\/authorized_keys/g' /etc/ssh/sshd_config
service sshd restart
