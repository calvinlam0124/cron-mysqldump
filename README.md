# Cron MySQLdump
Containerized, Schedulized, multiple database mysqldump script

### Requirement
- Docker

### Usage
```sh
# 1. modify the default database.mysqldump.sh
# 2. Add a new dump file for other database
# 3. all SQL file will output to `~/.cron-mysqldump/data`
# 4. modify mysqldump.conf.d/crontab 


docker build --rm -t localhost/mysqldump .
docker run -it -v ~/.cron-mysqldump/data:/mnt/mysqldump.conf.d/data localhost/mysqldump
docker ps
docker exec -it CONTAINER_ID bash
```
