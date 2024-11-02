# heritage_craft_mobile
Nama: Namira Aulia
NPM : 2306165931
Kelas: PBP - C

### Tugas 7
1.  Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
Stateless widget adalah widget statis dimana seluruh konfigurasi yang dimuat didalamnya telah diinisiasi sejak awal. 
Sedangkan Stateful widget berlaku sebaliknya dimana sifatnya adalah dinamis, sehingga widget ini dapat diperbaharui kapanpun dibutuhkan berdasarkan user actions atau ketika terjadinya perubahan data.

Perbedaannya adalah jika sebuah widget dapat berubah ketika user berinteraksi dengannya, widget tersebut termasuk widget stateful. Stateful widget bersifat dinamis, dimana tampilannya dapat berubah sebagai respon terhadap suatu event yang dipicu oleh user actions atau ketika terjadinya perubahan data. Misalnya adalah Checkbox, Radio, Slider, InkWell, Form, dan TextField. Sedangkan stateless widget tidak pernah berubah. Hanya parentnya yang dapat mengubah widget terrsebut. Misalnya adalah Icon, IconButton, dan Text. 

**Stateless Widget**:
- Stateless widget adalah widget yang tidak memiliki internal state (keadaan internal).
- Digunakan untuk bagian-bagian tampilan yang tidak perlu diubah saat data atau kondisi berubah.
- Stateless widget hanya akan dirender sekali saat dibuat, dan setelah itu tidak akan mengalami perubahan. Berguna untuk tampilan statis.
- Contoh penggunaan stateless widget adalah untuk menampilkan teks, ikon, gambar, atau tampilan yang tidak berubah dalam siklus hidup aplikasi.

**Stateful Widget:**
- Stateful widget adalah widget yang memiliki internal state (keadaan internal).
- Digunakan untuk bagian-bagian tampilan yang perlu diperbarui ketika data atau kondisi berubah.
- Stateful widget memiliki metode setState yang memungkinkan Anda untuk memperbarui tampilan ketika ada perubahan dalam state widget tersebut.
- Contoh penggunaan stateful widget adalah untuk membuat formulir, daftar yang dapat discroll, atau tampilan yang perlu berinteraksi dengan data atau pengguna.

2.  Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
- Scaffold
Scaffold adalah widget dasar untuk membuat struktur halaman yang lengkap, termasuk AppBar dan body. Scaffold menyediakan fitur standar aplikasi seperti AppBar di bagian atas halaman, floating action button, bottom navigation, drawer, dan sebagainya.
- AppBar
Widget ini digunakan untuk menampilkan header di bagian atas halaman. Di sini, AppBar menampilkan judul aplikasi "Heritage Craft E-Commerce" dengan teks putih dan tebal, serta warna latar belakang yang diambil dari tema aplikasi.
- Column
Widget Column digunakan untuk menyusun widget secara vertikal. Dalam body, Column digunakan untuk menyusun InfoCard, teks sambutan, dan GridView dalam satu kolom.
- Row
Widget Row digunakan untuk menyusun widget secara horizontal. Dalam kode ini, Row digunakan untuk menampilkan tiga InfoCard (NPM, Name, Class) secara sejajar.
- GridView.count
GridView.count adalah widget yang digunakan untuk menampilkan item dalam bentuk grid dengan jumlah kolom tetap. Dalam kode ini, GridView.count digunakan untuk menampilkan setiap ItemCard dalam grid dengan tiga kolom, sehingga setiap item terlihat rapi.
- Card
Card adalah widget yang menampilkan sebuah kontainer dengan tampilan seperti kartu, sering digunakan untuk menampilkan informasi yang rapi dengan bayangan di bawahnya. Di sini, Card digunakan pada widget InfoCard untuk menampilkan informasi pengguna (NPM, Name, dan Class) dalam bentuk kartu.
- Text
Widget untuk menampilkan tulisan.Di kode ini, Text dipakai untuk berbagai teks, seperti judul halaman, sambutan "Welcome to Heritage Craft E-Commerce", dan juga konten yang ada di InfoCard.
- Icon
Icon adalah widget untuk menampilkan ikon-ikon standar yang sudah disediakan oleh Flutter, seperti ikon keranjang, tambah (+), dan logout. Di ItemCard, Icon digunakan bersama dengan nama item untuk menunjukkan ikon sesuai fungsinya (seperti ikon keranjang untuk "Lihat Daftar Produk").
- InkWell
InkWell adalah widget yang membuat elemen bisa di-tap dengan efek ripple (gelombang) saat disentuh, memberikan efek sentuhan pada elemen itu. Dalam kode ini, InkWell dipakai di dalam setiap ItemCard. Saat ditekan, efek ripple muncul, dan SnackBar muncul untuk memberi tahu pengguna bahwa item tersebut ditekan.
- SnackBar
SnackBar adalah widget yang menampilkan pesan sementara di bagian bawah layar. Di sini, SnackBar digunakan untuk memberi feedback kepada pengguna saat mereka menekan ItemCard dengan menampilkan pesan yang menyebutkan nama item yang ditekan.
- SizedBox
Widget ini memberikan ukuran tetap atau jarak antar widget. Di sini, SizedBox digunakan untuk memberikan jarak vertikal antara InfoCard dan teks sambutan.

3. Apa fungsi dari `setState()?` Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Di Flutter, `setState()` adalah metode yang digunakan untuk memberi tahu framework bahwa ada perubahan data pada widget stateful yang perlu di-render ulang pada UI. Saat `setState()` dipanggil, Flutter akan menjalankan kembali fungsi `build()` dari widget tersebut agar perubahan data yang terjadi dapat langsung terlihat pada tampilan.

**Variabel yang Terpengaruh oleh setState()**
Tidak semua variabel akan terdampak oleh `setState()`, melainkan hanya variabel yang terkait dengan state dari widget (biasanya variabel yang disimpan di dalam kelas StatefulWidget dan bergantung pada data di State).


4. Jelaskan perbedaan antara `const` dengan `final`.


5. Cara mengimplementasikan checklist-checklist di atas.
__Membuat direktori baru untuk menyimpan Project Flutter__
- Menjalankan command di bawah ini dalam Command prompt untuk membuat flutter project
```
flutter create heritage_craft
cd heritage_craft
```
__Merapikan struktur Project__
- Setelah membuat project flutter baru di direktori lokal, saya membuka VS code dan membuat file baru pada direktori `heritage_carft/lib` dengan nama `menu.dart`
flutter project
```
import 'package:flutter/material.dart';
```
- Pada direktori yang sama, cek file `main.dart` kemudian memindahkan baris ke-39 hingga akhir ke file `menu.dart`
- Menambahkan kode berikut di file `main.dart` paling atas
```
import 'package:heritage_craft/menu.dart';
```
__Membuat widget__
- Mengubah difat widget halaman menu menjadi stateless dengan menghapus `MyHomePage(title: 'Flutter Demo Home Page')` pada file `main.dart`, sehingga menjadi berikut
```
MyHomePage
```
- Pada file `menu.dart` saya mengubah 



