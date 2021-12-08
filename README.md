# MySQL Server base Docker image

**Duktig Microservices** - MySQL Server base Docker image based on official MySQL image

## Version 1.1.0

The main goal of this deployment is to demonstrate the MySQL Docker container functionality with a demo database.

## MySQL Server Configuration

See the file: `./config/my.cnf`

> NOTE: Remember to change the shared volume `/mnt/users/mysql` in `docker-compose.yml` file. 

## Database Schema creation

See files located in `./docker-entrypoint-initdb.d/` directory

> NOTE: A;; files (*.sql, *.sh) located in `./docker-entrypoint-initdb.d/` directory will executed at container deployment time only if specified database still not exists. Otherwise the creation/execution process will be skipped.

## Deployment 

To deploy the container:

    $ cd path/to/this/directory
    $ sh build-deploy-all.sh

More details explained in `docker-compose.yml` file

## Credits

This Installation schema is a part of **Duktig Microservices** Package developed by **Duktig Solutions LLC**

**Copyright 2021 Duktig Solutions LLC**

## Contacts

- Email: software@duktig.dev>
- Phone: +37495565003
- Website: http://duktig.solutions

End of document
