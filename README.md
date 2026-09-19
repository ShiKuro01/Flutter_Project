# Flutter Navigation & Neo-Brutalism App

A Flutter application built as a demonstration of basic routing, state management, and UI slicing. The application features a bold, unique **Neo-Brutalism** design style utilizing thick borders, flat colors (pastels), and solid shadows.

## 🌟 Features

- **Neo-Brutalism UI**: A visually striking aesthetic using pastel colors (`#88AAEE`, `#FFF4D2`, dll.), uppercase typography, and hard geometric borders.
- **Stack Navigation**: Mengimplementasikan `Navigator.push` untuk menavigasi antar layar dengan tombol *back* otomatis yang disediakan oleh `AppBar`.
- **Stateless vs Stateful Widgets**: 
  - `HomeScreen` diimplementasikan sebagai `StatelessWidget` untuk menampilkan daftar data profil ke dalam kartu (*cards*).
  - `DetailScreen` diimplementasikan sebagai `StatefulWidget` untuk mendemonstrasikan perubahan *state* interaktif (Tombol "IKUTI SEKARANG" menjadi "MENGIKUTI").
- **Modular Structure**: Kode dasar telah dipisahkan (sliced) ke dalam folder `screens` dan `models` agar lebih rapi dan mudah diatur (*maintainable*).

## 📂 Project Structure

```text
lib/
│
├── models/
│   └── catalog_item.dart      # Struktur data (Model) untuk item katalog
│
├── screens/
│   ├── home_screen.dart       # Screen 1: Beranda (StatelessWidget)
│   └── detail_screen.dart     # Screen 2: Detail Profil (StatefulWidget)
│
└── main.dart                  # Entry point aplikasi & konfigurasi ThemeData (Neo-Brutalism)
```

## 🚀 Getting Started

1. Pastikan Anda telah menginstal [Flutter](https://flutter.dev/docs/get-started/install) di mesin Anda.
2. Clone *repository* ini dan masuk ke dalam foldernya:
   ```bash
   git clone https://github.com/ShiKuro01/Flutter_Project.git
   cd Flutter_Project
   ```
   *(Pastikan Anda berada di branch `task_5`)*
   ```bash
   git checkout task_5
   ```
3. Unduh dan perbarui semua *dependencies*:
   ```bash
   flutter pub get
   ```
4. Jalankan aplikasi pada *emulator* atau perangkat fisik pilihan Anda:
   ```bash
   flutter run
   ```

## 📝 Requirements Checklist
- [x] Screen 1 (Beranda) menggunakan `StatelessWidget` dan `ListView` dengan 3 item yang bisa diklik.
- [x] Menggunakan Stack Navigation (`Navigator.push`) untuk rute ke Screen 2.
- [x] Screen 2 menggunakan tata letak `Column`.
- [x] Screen 2 adalah `StatefulWidget` untuk menyelesaikan tantangan interaktif (*Follow/Unfollow*).
- [x] Screen 2 memiliki *icon back* yang otomatis tersedia melalui struktur `AppBar`.
- [x] Screen 2 memiliki `Container` dengan latar belakang warna kuning pastel khusus untuk deskripsi/bio.

---
*Dikembangkan untuk penyelesaian tugas dan demonstrasi konsep navigasi dasar pada Flutter.*
