FROM postgres:9.6
RUN apt-get update
RUN apt-get install -y nano ssh openssh-client openssh-server
RUN mkdir -p /bkp/archive/
# RUN mkdir /var/run/sshd
# RUN echo 'root:root' | chpasswd
# RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# # SSH login fix. Otherwise user is kicked off after login
# RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

# ENV NOTVISIBLE "in users profile"
# RUN echo "export VISIBLE=now" >> /etc/profile

RUN pg_createcluster --start 9.6 main
ADD pg_hba.conf /etc/postgresql/9.6/main/pg_hba.conf
ADD postgresql.conf /etc/postgresql/9.6/main/postgresql.conf

# EXPOSE 22
# RUN /usr/sbin/sshd -D &
# RUN psql -U postgres -c "create user replicacao REPLICATION password '12345';"
