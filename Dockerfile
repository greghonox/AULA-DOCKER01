# Derivando da imagem oficial do MySQL
FROM mysql
# Adicionando os scripts SQL para serem executados na criação do banco
COPY db.sql /docker-entrypoint-initdb.d/
