# MegaBNB Bot

sebuah alat otomatisasi untuk mengirimkan permintaan claim faucet ke alamat Ethereum melalui API `mbscan.io`. Bot ini dirancang untuk mempermudah pengguna dalam mengotomatisasi pengiriman permintaan airdrop dengan antarmuka yang sederhana dan ramah pengguna.


## Fitur
- Mengirimkan permintaan airdrop ke API `mbscan.io` secara otomatis.
- Validasi alamat Ethereum (42 karakter, diawali '0x', hanya karakter heksadesimal).
- Antarmuka berwarna menggunakan kode ANSI untuk tampilan yang menarik.
- Mendukung pengiriman berulang sesuai jumlah yang ditentukan pengguna.
- Penundaan 3 detik antar permintaan untuk mencegah spam.
- Opsi keluar program dengan mudah menggunakan input 'q'.

## Prasyarat
Sebelum menjalankan bot, pastikan Anda memiliki:
- Ruby (versi 2.7 atau lebih baru) terinstal di sistem Anda.
- Koneksi internet untuk mengakses API `mbscan.io`.

## Instalasi
1. **Kloning Repositori**
   ```bash
   git clone https://github.com/Yuurichan-N3/MegaBNB-Bot.git
   cd MegaBNB-Bot
   ```

2. **Instal Dependensi**
   Bot ini menggunakan gem `httparty` untuk melakukan permintaan HTTP. Instal gem tersebut dengan perintah:
   ```bash
   gem install httparty
   ```

## Cara Penggunaan
1. **Jalankan Bot**
   Jalankan file `bot.rb` menggunakan Ruby:
   ```bash
   ruby bot.rb
   ```

2. **Ikuti Petunjuk**
   - Masukkan alamat Ethereum yang valid (contoh: `0x1234567890abcdef1234567890abcdef12345678`).
   - Masukkan jumlah permintaan yang ingin dikirim.
   - Ketik `q` untuk keluar dari program.

3. **Contoh Output**
   ```
   ╔══════════════════════════════════════════════╗
   ║       🌟 MegaBNB Bot - Automated Claim       ║
   ║  Automate your airdrop request submissions!  ║
   ║  Developed by: https://t.me/sentineldiscus   ║
   ╚══════════════════════════════════════════════╝

   Enter Ethereum address (or 'q' to quit): 0x1234567890abcdef1234567890abcdef12345678
   Enter number of requests to send: 3
   Starting 3 requests for address: 0x1234567890abcdef1234567890abcdef12345678
   Sending request 1/3...
   Request successful for address: 0x1234567890abcdef1234567890abcdef12345678
   ...
   Completed 3 requests for address: 0x1234567890abcdef1234567890abcdef12345678
   ```

## Catatan
- Pastikan alamat Ethereum yang dimasukkan valid untuk menghindari error.
- Bot ini hanya mengirimkan permintaan ke API dan tidak menjamin keberhasilan airdrop.
- Gunakan dengan bijak dan sesuai dengan ketentuan layanan API `mbscan.io`.

## 📜 Lisensi  

Script ini didistribusikan untuk keperluan pembelajaran dan pengujian. Penggunaan di luar tanggung jawab pengembang.  

Untuk update terbaru, bergabunglah di grup **Telegram**: [Klik di sini](https://t.me/sentineldiscus).


---

## 💡 Disclaimer
Penggunaan bot ini sepenuhnya tanggung jawab pengguna. Kami tidak bertanggung jawab atas penyalahgunaan skrip ini.
