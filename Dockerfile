# og ngnix
FROM nginx:latest

#Copy my Html fileee
COPY index.html /usr/share/nginx/html/

#Change Permisssions For Ngnix directories so an arbitart user or a normal user(student or anything) can write to them
RUN chown -R 1001:0 /var/cache/nginx \
    && chmod +R g+w /var/cache/nginx \
    && chmod -R 1001:0 /var/run \
    && chmod -R g+w /var/run 


# Run as a NoN-rOOT uSER
USER 1001 

# WE Create a Custom nginx.conf  So that it listens to port 8080 rather than the default 80

# COPY  my-custom-nginx.conf /etc/nginx/nginx.conf
    
