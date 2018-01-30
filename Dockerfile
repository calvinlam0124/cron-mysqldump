FROM mysql

RUN apt-get update && \
  apt-get install -y cron

COPY ./mysqldump.conf.d/ /mnt/mysqldump.conf.d
VOLUME /mnt/mysqldump.conf.d/data
RUN (crontab -l ; cat /mnt/mysqldump.conf.d/crontab) | crontab
CMD cron && tail -f /mnt/mysqldump.conf.d/log/cron.log
# docker build --rm -t localhost/mysqldump .
# docker run -it -v /Users/workspace/mysqldump/data:/mnt/mysqldump.conf.d/data localhost/mysqldump
# docker ps
# docker exec -it CONTAINER_ID bash
