# Menggunakan image Go 1.20.5 sebagai base image
FROM golang:1.20.5-windows-amd64

# Menyediakan direktori kerja dalam container
WORKDIR /app

# Menyalin semua file dari direktori proyek Anda ke dalam direktori kerja di container
COPY . .

# Menjalankan perintah untuk mengompilasi kode Go
RUN go build -o myapp

# Menjalankan aplikasi ketika container dijalankan
CMD ["./myapp"]
