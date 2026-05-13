FROM nginx:1.27-alpine

COPY index.html /usr/share/nginx/html/
COPY my-custom-nginx.conf /etc/nginx/nginx.conf

RUN chown -R 1001:0 /var/cache/nginx /var/run /var/log/nginx \
    && chmod -R g+w /var/cache/nginx /var/run /var/log/nginx

USER 1001

EXPOSE 8080
