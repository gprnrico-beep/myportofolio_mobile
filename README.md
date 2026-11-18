
# myportofolio_mobile

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

### Tugas 7

**1. Jelaskan apa yang dimaksud dengan widget tree pada Flutter dan bagaimana hubungan induk-anak (parent-child) bekerja antar-widget!**

Widget tree adalah struktur yang menunjukkan hubungan antar-widget di Flutter. Widget disusun secara bertingkat, mulai dari widget induk (parent) sampai widget anak (child). Widget induk dapat mengatur tampilan dan posisi widget anaknya. Contohnya, `Scaffold` memiliki `AppBar` dan `body` sebagai bagian dari tampilannya.

**2. Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya masing-masing!**

Berikut widget yang digunakan dalam proyek ini beserta fungsinya:

- `MaterialApp`: Mengatur konfigurasi utama aplikasi, seperti tema dan halaman awal.
- `Scaffold`: Membuat struktur dasar halaman aplikasi.
- `AppBar`: Menampilkan bagian atas aplikasi beserta judul.
- `SingleChildScrollView`: Membuat halaman dapat di-scroll.
- `Column`: Menyusun widget secara vertikal.
- `Row`: Menyusun widget secara horizontal.
- `Expanded`: Membagi ruang yang tersedia secara fleksibel.
- `Padding`: Memberikan jarak di sekitar widget.
- `Text`: Menampilkan teks.
- `SizedBox`: Memberikan jarak atau ruang kosong antar-widget.
- `Card`: Menampilkan informasi dalam bentuk kartu.
- `Material`: Memberikan warna dan bentuk pada kartu tombol.
- `InkWell`: Membuat widget dapat menerima interaksi ketika ditekan.
- `Icon`: Menampilkan ikon.
- `SnackBar`: Menampilkan pesan sementara ketika tombol ditekan.
- `ScaffoldMessenger`: Mengatur dan menampilkan `SnackBar`.
- `MyHomePage`: Widget halaman utama portofolio.
- `InfoCard`: Widget buatan sendiri untuk menampilkan informasi profil, seperti NPM, nama, dan kelas.
- `ItemCard`: Widget buatan sendiri untuk menampilkan tombol menu portofolio.

**3. Apa fungsi dari widget MaterialApp? Jelaskan mengapa widget ini umumnya digunakan sebagai root widget pada aplikasi Flutter!**

`MaterialApp` berfungsi untuk mengatur konfigurasi utama aplikasi, seperti tema, navigasi, dan halaman awal. Widget ini biasanya menjadi root widget karena menjadi dasar bagi widget-widget lain yang digunakan dalam aplikasi.

**4. Jelaskan perbedaan antara StatelessWidget dan StatefulWidget! Kapan kita sebaiknya memilih StatelessWidget dan kapan harus menggunakan StatefulWidget?**

`StatelessWidget` adalah widget yang tampilannya tidak memiliki state yang berubah selama aplikasi berjalan. Sedangkan `StatefulWidget` adalah widget yang dapat menyimpan dan mengubah state sehingga tampilannya bisa diperbarui.

`StatelessWidget` cocok digunakan untuk tampilan yang relatif tetap, seperti kartu informasi profil. Sementara itu, `StatefulWidget` cocok digunakan untuk fitur yang membutuhkan perubahan data, seperti penghitung angka atau formulir interaktif.

**5. Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di dalam metode build?**

`BuildContext` adalah objek yang menunjukkan posisi sebuah widget di dalam widget tree. Dengan `BuildContext`, kita bisa mengakses informasi dari widget lain, seperti tema aplikasi.

Contohnya, pada proyek ini `BuildContext` digunakan untuk mengakses `ScaffoldMessenger` agar dapat menampilkan `SnackBar` ketika tombol ditekan.

**6. Jelaskan konsep hot reload di Flutter dan apa perbedaannya dengan hot restart! Kapan kita tidak bisa hanya mengandalkan hot reload dan harus melakukan hot restart atau full restart?**

Hot reload adalah fitur untuk melihat perubahan kode secara langsung tanpa harus menjalankan ulang aplikasi dari awal. Hot reload juga mempertahankan state aplikasi yang sedang berjalan.

Sedangkan hot restart akan menjalankan ulang aplikasi dari awal sehingga state sebelumnya akan direset. Hot reload biasanya digunakan ketika mengubah tampilan atau warna. Hot restart diperlukan ketika perubahan berkaitan dengan inisialisasi aplikasi. Full restart diperlukan jika perubahan membutuhkan proses build ulang, misalnya perubahan konfigurasi native atau plugin.
