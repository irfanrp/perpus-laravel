# Gunakan gambar resmi PHP 7.2 sebagai gambar dasar
FROM php:7.2

# Tetapkan direktori kerja ke /var/www/html
WORKDIR /var/www/html

# Salin kode aplikasi lokal ke direktori kerja kontainer
COPY . /var/www/html

# Instal dependensi yang diperlukan
RUN apt-get update && \
    apt-get install -y \
        libzip-dev \
        unzip \
        libpq-dev \
        libmagickwand-dev \
        libjpeg-dev \
        libpng-dev \
        libfreetype6-dev \
        libssl-dev \
        libmcrypt-dev \
        default-mysql-client

# Setel variabel lingkungan COMPOSER_ALLOW_SUPERUSER
ENV COMPOSER_ALLOW_SUPERUSER 1

# Instal ekstensi MySQL dan PDO
RUN docker-php-ext-install pdo_mysql

# Instal Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Jalankan composer update untuk menginstal dependensi proyek
RUN composer update

# Salin file .env.example ke .env
RUN cp .env.example .env

# Generate Laravel application key
RUN php artisan key:generate

# Generate migrate db
RUN php artisan migrate

#Seed DB
RUN php artisan db:seed

# Expose port 8000
EXPOSE 8000

# Perintah untuk menjalankan aplikasi
CMD php artisan serve --host=0.0.0.0 --port=8000
