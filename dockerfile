# Use the official Nginx image from Docker Hub
FROM nginx:alpine

# Remove the default nginx index page
RUN rm /usr/share/nginx/html/index.html

# Copy the custom HTML file to the nginx serving directory
COPY src/index.html /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx and keep it running in the foreground
CMD ["nginx", "-g", "daemon off;"]
