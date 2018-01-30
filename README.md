# Cron MySQLdump
Containerized, Schedulized, multiple database mysqldump script

### Requirement
- Docker

### Usage
```sh
# modify the default database.mysqldump.sh
# Add a new dump file for other database
# all SQL file will output to `~/.cron-mysqldump/data`


docker build --rm -t localhost/mysqldump .
docker run -it -v ~/.cron-mysqldump/data:/mnt/mysqldump.conf.d/data localhost/mysqldump
docker ps
docker exec -it CONTAINER_ID bash
```
