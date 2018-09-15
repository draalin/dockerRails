# dockerRails
Simple docker container running rails and mysql

## Run
docker-compose run app rails new . --force --database=mysql

sudo chmod 777 -R /home/tyler/docker/dev/rails7/config/master.key

docker-compose build

## Copy
Overwrite config/database.yml with:
```
default: &default
  adapter: mysql2
  encoding: utf8
  pool: 5
  username: root
  password: worf
  host: mysql

development:
  <<: *default
  database: mysqldb

test:
  <<: *default
  database: mysqldb
```

## Run
docker-compose up -d


## Visit:
http://localhost:3000
