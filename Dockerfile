FROM ubuntu
RUN sudo apt update \ 
  && sudo apt install apache2 -y
COPY index.html /var/www/html
EXPOSE 80
CMD ["apachectl","-D","FOREGROUND"]
