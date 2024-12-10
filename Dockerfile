# Use official Nginx image from Docker Hub
FROM nginx:alpine

# Set environment variable (This is optional, as it will come from Task Definition)
# ENV MY_ENV_VAR="Default value"

# Copy the entrypoint script and nginx configuration
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
COPY nginx.config /etc/nginx/nginx.config

# Make the entrypoint script executable
RUN chmod +x /usr/local/bin/entrypoint.sh

# Expose port 80
EXPOSE 80

# Set the entrypoint to our script
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

# Command to start nginx
CMD ["nginx", "-g", "daemon off;"]
