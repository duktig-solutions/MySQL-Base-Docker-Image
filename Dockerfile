FROM mysql:8

LABEL maintainer "Duktig Solutions <software@duktig.dev>"

# ADD Database schemas and shell files if any
ADD ./docker-entrypoint-initdb.d /docker-entrypoint-initdb.d
RUN chmod 777 /docker-entrypoint-initdb.d -R && chown -R mysql:mysql /docker-entrypoint-initdb.d/

COPY ./config/my.cnf /etc/mysql/my.cnf

RUN mkdir -p /var/lib/mysql-keyring/keyring-data && chown mysql:mysql /var/lib/mysql-keyring/keyring-data

## modify configuration file.
# RUN ini-file set --section "mysqld" --key "collation-server" --value "utf8_general_ci" "/opt/bitnami/mysql/conf/my.cnf"

## Modify the ports used by MySQL by default
# It is also possible to change these environment variables at runtime
# ENV MYSQL_PORT_NUMBER=3307
# EXPOSE 3306

# Set the volume inside container
VOLUME /var/lib/mysql
