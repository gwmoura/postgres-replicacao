

1 - gere a chave ssh com senha em branco, faça isso no servidor master e no slave

`ssh-keygen -t rsa`

2 - Copie a sua chave para o servidor slave

`ssh-copy-id vagrant@[ip_do_servidor_slave]`

3 - Copie a sua chave para o servidor master

`ssh-copy-id vagrant@[ip_do_servidor_master]`

Agora você consegue acessar os servidores sem utilizar senha

Faça o seguinte procedimento para adicionar a chave para o usuario postgres
`su postgres`
`ssh-keygen`
`cat ~/.ssh/id_rsa.pub`
`nano ~/.ssh/authorized_keys`
`chmod 0600 ~/.ssh/authorized_keys`
