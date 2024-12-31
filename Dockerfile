# Application :  Snakes & Ladder
# source : https://github.com/shontzu/snakes-and-ladders
# Dockerized by https://github.com/sahal56


# We need : minmal Nginx Docker Image to serve static website

# Base minimal image
# FROM nginx:stable-alpine-slim

# Base Distroless image by jbeveridge
FROM jbeveridge/nginx-distroless:latest

# Copy app files : html, css, js, images
COPY ./index.html /usr/share/nginx/html/index.html
COPY ./assets/ /usr/share/nginx/html/assets


# NOTE for jbeveridge/nginx-distroless : By default, this image exposes port 8080 for the NGINX server. So EXPOSE command not needed
# Expose nginx port 
# EXPOSE 8080


# Entry point of our container
ENTRYPOINT ["nginx", "-g", "daemon off;"]

