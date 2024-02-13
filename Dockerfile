# Use the official PHP image as base image
FROM php:8.0-apache

# Install additional dependencies if needed
# For example, to install mysqli extension:
# RUN docker-php-ext-install mysqli

# Set the working directory inside the container
WORKDIR /var/www/html

# Copy your PHP application files into the container
COPY . .

# Expose port 80 to allow external access
EXPOSE 3100

# Start Apache web server when the container starts
CMD ["apache2-foreground"]
