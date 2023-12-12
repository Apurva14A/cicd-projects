# Use an official NGINX base image from Docker Hub
FROM nginx:alpine

# Create a directory to store the application code
WORKDIR /usr/share/nginx/html

# Create an index.html file with "Hello, World!" content
RUN echo "Hello, World!" > index.html

# Expose the default NGINX port
EXPOSE 80
