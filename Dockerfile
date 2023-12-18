FROM ubuntu
RUN apt-get update
RUN apt-get install apache2 -y
ADD . /var/www/html/
RUN service apache2 restart
ENTRYPOINT apache2ctl -D FOREGROUND
