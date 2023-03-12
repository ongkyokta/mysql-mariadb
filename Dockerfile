FROM mariadb:latest

COPY ./default_auth.cnf /etc/mysql/conf.d/

ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 3306 33060
CMD ["mysqld"]