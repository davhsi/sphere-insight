# Use an official PHP image as the base
FROM php:8.1-fpm

# Install necessary system dependencies
RUN apt-get update && apt-get install -y \
    libonig-dev \
    libzip-dev \
    zip \
    unzip \
    && docker-php-ext-install mysqli pdo pdo_mysql mbstring zip

# Set the working directory
WORKDIR /var/www

# Copy composer files first for efficient Docker caching
COPY composer.json ./

# Install Composer globally and install dependencies
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer install --no-dev --optimize-autoloader

# Copy the rest of the application code
COPY . .

# Ensure permissions are correct for the application
RUN chown -R www-data:www-data /var/www

# Expose the appropriate port
EXPOSE 8080

# Define environment variables to be set at runtime by Render or Railway
ENV DB_HOST ""
ENV DB_PORT ""
ENV DB_USER ""
ENV DB_PASSWORD ""
ENV DB_NAME ""

# Start the PHP FastCGI Process Manager (FPM)
CMD ["php-fpm"]
