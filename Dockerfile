FROM nginx:latest

# Copy your custom HTML file into the nginx default root directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for nginx
EXPOSE 80

# Run nginx in foreground (required for Docker container)
CMD ["nginx", "-g", "daemon off;"]
