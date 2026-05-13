FROM nginx:latest

# Copy your custom HTML
COPY index.html /usr/share/nginx/html/

# Change permissions for Nginx directories so an arbitrary user can write to them
RUN chown -R 1001:0 /var/cache/nginx \
    && chmod -R g+w /var/cache/nginx \
    && chown -R 1001:0 /var/run \
    && chmod -R g+w /var/run

# Run as a non-root user
USER 1001

# You will also need to provide a custom nginx.conf that listens on 8080 instead of 80
# COPY my-custom-nginx.conf /etc/nginx/nginx.conf
