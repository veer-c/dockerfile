FROM ubuntu 
RUN apt-get update 
RUN apt-get install apache2 -y
RUN apt-get install apache2-utils -y
RUN apt-get clean 
EXPOSE 80 
#ENTRYPOINT [“apache2ctl”, “-D”, “FOREGROUND”]
ENTRYPOINT /usr/bin/tail -f /dev/null
