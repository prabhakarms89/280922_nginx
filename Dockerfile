FROM ubuntu
RUN apt-get update -y \
    && apt-get install curl -y \
    && apt-get install wget -y \
    && apt-get install nginx -y
COPY index.html /var/www/html
CMD ["nginx", "-g", "daemon off;"]
