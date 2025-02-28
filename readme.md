# 📚 Perpusku GC - Dockerized

## 📌 Overview
Project ini merupakan aplikasi perpustakaan yang berjalan menggunakan PHP 7.2 dan Laravel. Anda diminta untuk menyiapkan lingkungan menggunakan Docker dan Docker Compose agar aplikasi berjalan tanpa langkah manual.

## 🚀 Requirements
- Docker
- Docker Compose

## 🏗️ Task
Buatlah konfigurasi Docker yang memenuhi kriteria berikut:

### 1️⃣ Gunakan PHP 7.2
Aplikasi harus berjalan menggunakan PHP 7.2 dengan Apache sebagai web server.

### 2️⃣ Konfigurasi Composer
- Jalankan perintah `composer update` di dalam direktori `perpus`.
- Pastikan Composer tersedia dalam container.

### 3️⃣ Konfigurasi Environment
- Salin file `.env.example` menjadi `.env`.
- Jalankan perintah `php artisan key:generate` untuk membuat APP_KEY dalam `.env`.

### 4️⃣ Konfigurasi Database
- Pastikan terdapat database dengan nama `perpusku_gc`.
- Sesuaikan konfigurasi database di dalam `.env` agar aplikasi dapat terhubung ke database.

### 5️⃣ Migrasi dan Seed Database
- Jalankan perintah `php artisan migrate`.
- Jalankan perintah `php artisan db:seed`.

### 6️⃣ Automatisasi
- Pastikan semua langkah di atas berjalan secara otomatis tanpa langkah manual.
- Gunakan Bash script yang akan dieksekusi ketika container berjalan untuk mengotomatiskan seluruh proses setup.

## 📜 Submission
Kumpulkan file `Dockerfile`, `docker-compose.yml`, dan Bash script yang digunakan untuk menjalankan otomatisasi setup.

