# Use an official Nginx runtime as a parent image
FROM nginx:latest

# Copy the build artifacts from the host machine to the container
COPY build/web /usr/share/nginx/html

# Expose port 80 to allow outside access to the app
EXPOSE 80

# Start Nginx when the container is launched
CMD ["nginx", "-g", "daemon off;"]