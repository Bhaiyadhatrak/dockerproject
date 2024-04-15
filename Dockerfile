# Use Ubuntu as the base image
FROM ubuntu:22.04

# Install nginx
RUN apt-get update && \
    apt-get install -y nginx

# Expose port 80
EXPOSE 80

# Copy index.html into the nginx default directory
COPY index.html /var/www/html/index.html

# Start nginx service in the foreground
CMD ["nginx", "-g", "daemon off;"]
