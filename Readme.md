# CRIAR A IMAGEM
docker build -t backoffice .

# CONECTAR E CRIAR DB
docker run -d -p 3306:3306 -e MYSQL_ROOT_PASSWORD=RootPassword -e MYSQL_DATABASE=backoffice -e MYSQL_USER=MainUser -e MYSQL_PASSWORD=MainPassword backoffice

# RODANDO O DOCKER E ACESSANDO
docker run -it backoffice /bin/bash

# EXECUTANDO O BANCO DE DADOS
/etc/init.d/mysql start

# CONECTANDO NO BANCO
mysql -uroot -pRootPassword

# RODANDO O DOCKER COMPOSE, NA MESMA PASTA QUE CONTEM docker-compose.yml
docker-compose up
# REFERENCIA:
# https://share.atelie.software/subindo-um-banco-de-dados-mysql-e-phpmyadmin-com-docker-642be41f7638
