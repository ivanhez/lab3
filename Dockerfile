FROM ubuntu:latest

RUN apt-get update && apt-get install -y nginx

COPY html /var/www/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]  

## docker build -t lab3 .
## docker run --name lab3 -p 8080:80 lab3