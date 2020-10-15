FROM nginx:1.19.2-alpine

EXPOSE 80

ADD /index.html /var/www/html/index.html
ADD /startup.sh /
ADD /default.conf /etc/nginx/conf.d/

CMD [ "/startup.sh" ]
