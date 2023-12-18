FROM ubuntu
RUN apt-get update
RUN apt-get install apache2 -y
ADD /home/ubuntu/workspace/BuildJob1/ /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
