FROM node:16

WORKDIR /var/www/html
COPY pipe.sh /var/www/html/
RUN chmod +x /var/www/html/pipe.sh

RUN npm install -g gulp

ENTRYPOINT ["/var/www/html/pipe.sh"]