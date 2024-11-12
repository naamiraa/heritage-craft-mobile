# heritage_craft_mobile
Nama: Namira Aulia  
NPM : 2306165931  
Kelas: PBP - C

# TUGAS 7
**1.  Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.**  
Stateless widget adalah widget statis dimana seluruh konfigurasi yang dimuat didalamnya telah diinisiasi sejak awal. 
Sedangkan Stateful widget berlaku sebaliknya dimana sifatnya adalah dinamis, sehingga widget ini dapat diperbaharui kapanpun dibutuhkan berdasarkan user actions atau ketika terjadinya perubahan data. 

Perbedaannya adalah jika sebuah widget dapat berubah ketika user berinteraksi dengannya, widget tersebut termasuk widget stateful. Stateful widget bersifat dinamis, dimana tampilannya dapat berubah sebagai respon terhadap suatu event yang dipicu oleh user actions atau ketika terjadinya perubahan data. Misalnya adalah Checkbox, Radio, Slider, InkWell, Form, dan TextField. Sedangkan Widget stateless adalah widget yang tidak berubah, artinya tidak dapat diubah. Hanya parentnya yang dapat mengubah widget tersebut. Misalnya adalah Icon, IconButton, dan Text. 

**Stateless Widget**:
- Stateless widget adalah widget yang tidak memiliki internal state (keadaan internal).
- Digunakan untuk bagian-bagian tampilan yang tidak perlu diubah saat data atau kondisi berubah.
- Stateless widget hanya akan dirender sekali saat dibuat, dan setelah itu tidak akan mengalami perubahan. Berguna untuk tampilan statis.
- Contoh penggunaan stateless widget adalah untuk menampilkan teks, ikon, gambar, atau tampilan yang tidak berubah saat aplikasi sedang berjalan.

**Stateful Widget:**
- Stateful widget adalah widget yang mengubah propertinya selama run-time
- Widget bersifat dinamis, artinya dapat berubah dan dapat dihambar beberapa kali selama lifetime.
- Dapat mengubah tampilannya sebagai respons terhadap event yang dipicu oleh user actions atau saat menerima data

referensi: [geeksforgeeks](https://www.geeksforgeeks.org/difference-between-stateless-and-stateful-widget-in-flutter/)

**2.  Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.**
- Scaffold  
Scaffold adalah widget dasar untuk membuat struktur halaman yang lengkap, termasuk AppBar dan body. Scaffold menyediakan fitur standar aplikasi seperti AppBar di bagian atas halaman, floating action button, bottom navigation, drawer, dan sebagainya.
- AppBar  
Widget ini digunakan untuk menampilkan header di bagian atas halaman. Di sini, AppBar menampilkan judul aplikasi "Heritage Craft E-Commerce" dengan teks putih dan tebal, serta warna latar belakang yang diambil dari tema aplikasi.
- Column  
Widget Column digunakan untuk menyusun widget secara vertikal. Dalam body, Column digunakan untuk menyusun InfoCard, teks sambutan, dan GridView dalam satu kolom.
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

**3. Apa fungsi dari `setState()?` Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.**  
Di Flutter, `setState()` adalah metode yang digunakan untuk memberi tahu framework bahwa ada perubahan data pada widget stateful yang perlu di-render ulang pada UI. Saat `setState()` dipanggil, Flutter akan menjalankan kembali fungsi `build()` dari widget tersebut agar perubahan data yang terjadi dapat langsung terlihat pada tampilan.

**Variabel yang Terpengaruh oleh setState()**  
Tidak semua variabel akan terdampak oleh `setState()`, melainkan hanya variabel yang terkait dengan state dari widget (biasanya variabel yang disimpan di dalam kelas StatefulWidget dan bergantung pada data di State).

referensi: [api.flutter.dev](https://api.flutter.dev/flutter/widgets/State/setState.html)


**4. Jelaskan perbedaan antara `const` dengan `final`.**  
`const` di Dart adalah menjadikan variabel konstan sejak waktu kompilasi saja. Keyword `const` digunakan untuk mendeklarasikan variabel yang nilainya diketahui dan ditetapkan saat waktu kompilasi dan dia tidak dapat diubah. Sedangkan `final` digunakan untuk mengkodekan nilai - nilai variabel secara permanen dan tidak dapat diubah di masa mendatang, bergitu pula jenis operasi apapun yang dilakukan pada variabel - variabel ini tidak dapat mengubah nilainya (state). `final` variabel akan dievaluasi pada saat runtime ketika diberi nilai, kemudian variabel tersebut juga menjadi tidak dapat diubah.

Contoh:

````dart
void main() {
    final int finalValue = DateTime.now().year;
    const int constValue = DateTime.now().year;
}
````
Dalam contoh ini, `finalValue` dievaluasi saat runtime dan diberi nilai tahun saat ini menggunakan `DateTime.now().year`. Nilainya tetap konstan setelah ditetapkan.

Di sisi lain, `constValue` dievaluasi saat compile time, artinya dia menerima nilai yang diketahui pada waktu kompilasi. Tidak tepat jika menetapkan nilai yang hanya dapat ditentukan pada runtime. Oleh karena itu, kesalahan akan terjadi pada line 65 ketika kita mencoba untuk run kode tersebut karena kita tidak dapat menentukan nilai runtime ke variable const. 

referensi: [educative.io](https://www.educative.io/answers/what-is-the-difference-between-const-and-final-keyword-in-dart)

**Const:** Nilai harus diketahui saat *compile-time*, misalnya `const birthday = "2006/12/02"` dan tidak dapat diubah setelah inisialisasi  
**Final:** Nilai harus diketahui saat *run-time*, misalnya adalah `final birthday = getBirthDateFromDB()` dan juga tidak dapat diubah setelah inisialisasi.

referensi: [stackoverflow](https://stackoverflow.com/questions/50431055/what-is-the-difference-between-the-const-and-final-keywords-in-dart)


**5. Cara mengimplementasikan checklist-checklist di atas.**  
__A. Membuat direktori baru untuk menyimpan Project Flutter__
- Menjalankan command di bawah ini dalam Command prompt untuk membuat flutter project
```
flutter create heritage_craft
cd heritage_craft
```
__B. Merapikan struktur Project__
- Setelah membuat project flutter baru di direktori lokal, saya membuat file baru pada direktori `heritage_carft/lib` dengan nama `menu.dart`untuk memisahkan tampilan utama aplikasi sehingga main.dart bisa tetap ringkas dan berfungsi hanya sebagai entry point. 
- Pada direktori yang sama, cek file `main.dart` kemudian memindahkan baris ke-39 hingga akhir ke file `menu.dart`
- Menambahkan kode berikut di file `main.dart` paling atas
```
import 'package:heritage_craft/menu.dart';
```
__C. Membuat widget__
- Mengubah tema warna aplikasi pada file `main.dart` yang mempunyai tipe `MaterialApp`
- Pada file `menu.dart` saya mengubah sifat widget halaman dari `stateful` menjadi `stateless` dan menambahkan widget `build`
- Membuat tiga *button card* dengan membuat *class* baru terlebih dahulu bernama `ItemHomePage` yang berisi atribut dari *card* yaitu *icon,* *name,* dan juga *color* pada berkas `menu.dart`. Setelah itu, saya membuat *list of* `ItemHomePage` yang berisi tombol `Lihat Produk`, `Tambah Produk `, dan `Logout`.
- Membuat object `ItemHomepage` pada `MyHomepage()`. Setiap tombol diatur agar memiliki ikon, warna, dan teks yang berbeda, sesuai data yang saya berikan.
- Membuat class `ItemCard` untuk menampilkan tombol
- Pada setiap tombol, saya menambahkan `SnackBar` yang akan muncul saat tombol ditekan dan menampilkan pesan, “Kamu telah menekan tombol {nama}!”. Saya menggunakan `ScaffoldMessenger` untuk memunculkan `SnackBar` ini

__D. Mengintegrasikan Menu dengan main.dart__  
Setelah kode pada  `menu.dart` sudah sesuai, selanjutnya adalah mengintegrasikan MenuPage ini dengan `main.dart` agar dapat menampilkan seluruh `card` yang saya miliki di `HomePage`. Saya melakukan ini dengan memanggil `MyHomePage()` sebagai nilai home di `MaterialApp` pada `main.dart`.

__E. Melakukan add, commit, push ke GitHub__  
Langkah terakhir yang saya lakukan pada Tugas 7 ini adalah melakukan `git add, git commit, git push` ke GitHub.



# TUGAS 8
**1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?**  
Di Flutter, `const` digunakan untuk menentukan nilai atau widget yang bersifat konstan atau tidak berubah selama runtime. Keyword `const` membuat objek menjadi compile-time constant, artinya nilainya sudah ditentukan ketika aplikasi dikompilasi dan tidak akan berubah setelah itu.

**Keuntungan Menggunakan const di Flutter:**
- Mengurangi penggunaan memori: Karena const hanya menyimpan satu instance dari objek tersebut, aplikasi menggunakan lebih sedikit memori.
- Meningkatkan performa aplikasi: Flutter menghindari membuat ulang objek yang sama saat render ulang, sehingga membuat aplikasi lebih cepat dan responsif.
- Meningkatkan keterbacaan kode: Penggunaan const membuat pembacaan kode lebih jelas, yaitu bahwa suatu nilai atau widget adalah konstan dan tidak boleh berubah.

**Kapan Sebaiknya Menggunakan const:**
- Stateless Widget: Jika memiliki widget statis atau konten yang tidak berubah, seperti teks atau ikon dalam sebuah halaman.
- Nilai tetap di dalam Widget tree: Misalnya pada widget seperti `Text('Hello')` atau `Icon(Icons.home)`, lebih baik menggunakan `const` jika nilai tersebut tidak akan berubah.
- Layouts dan padding yang tetap: Saat mendefinisikan `EdgeInsets` atau `SizedBox` dengan ukuran tetap yang tidak berubah, penggunaan `const` akan lebih efisien.

**Kapan Tidak Menggunakan const:**
- Dynamic Content: Jika nilai atau widget tersebut akan berubah selama runtime, maka sebaiknya tidak menggunakan `const`. Misalnya untuk menampilkan teks yang akan di-update dari waktu ke waktu, maka sebaiknya tidak menggunakan `const `
- Stateful Widget: Jika widget tergantung pada perubahan state atau memuat data dari sumber dinamis, const tidak dapat digunakan, karena kontennya tidak statis.

referensi: [medium](https://medium.com/@pakorn_traipan/final-vs-const-in-dart-choosing-the-right-variable-type-for-your-program-2117c2a3b96b#:~:text=Because%20const%20variables%20are%20known%20at%20compile-time%2C%20they,compiler%20cannot%20optimize%20them%20in%20the%20same%20way)

**2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!**   
`Column` dan `Row` adalah dua widget layout dasar dalam Flutter yang digunakan untuk mengatur elemen-elemen secara vertikal atau horizontal. Keduanya sangat berguna ketika kita ingin mengatur posisi widget anak-anak (children) dalam aplikasi.   
**a. Column**  
Column digunakan untuk menampilkan widget-widget secara vertikal (dari atas ke bawah). Semua elemen anak dalam `Column` diatur dalam satu kolom.   
**Properti Penting pada Column:**
- `mainAxisAlignment`: Mengatur posisi widget di dalam `Column` secara vertikal (misalnya, di atas, di tengah, atau di bawah).
- `crossAxisAlignment`: Mengatur posisi widget secara horizontal dalam `Column`.
- `children`: Menyimpan daftar widget yang akan ditempatkan di dalam `Column`.

Contoh implementasi:
```dart
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget>[
    Text('Text pertama'),
    Text('Text kedua'),
    ElevatedButton(
      onPressed: () {},
      child: Text('Tombol'),
    ),
  ],
)
```
Pada contoh di atas:
- `mainAxisAlignment`: `MainAxisAlignment.center` menempatkan seluruh konten `Column` di tengah secara vertikal.
- `crossAxisAlignment`: `CrossAxisAlignment.start` menyelaraskan elemen di awal secara horizontal.

**b. Row**   
`Row` digunakan untuk menyusun widget secara horizontal (kiri ke kanan). Widget ini cocok untuk menyusun elemen-elemen yang membutuhkan ruang horizontal, seperti menu atau tombol-tombol yang diletakkan bersebelahan.   
**Properti Penting pada Row:**
- `mainAxisAlignment`: Mengatur posisi widget di dalam `Row` secara horizontal.
- `crossAxisAlignment`: Mengatur posisi widget secara vertikal dalam `Row`.
- `children`: Menyimpan daftar widget yang akan ditempatkan di dalam `Row`.  
Contoh implementasi:
```dart
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: <Widget>[
    Icon(Icons.home),
    Text('Home'),
    ElevatedButton(
      onPressed: () {},
      child: Text('Go'),
    ),
  ],
)
```
Pada contoh di atas:
- `mainAxisAlignment`: `MainAxisAlignment.spaceBetween` menempatkan elemen-elemen pada `Row` dengan jarak yang sama antara satu sama lain.
- `crossAxisAlignment`: `CrossAxisAlignment.center` menyelaraskan elemen di tengah secara vertikal dalam `Row`.

referensi: [geeksforgeeks](https://www.geeksforgeeks.org/row-and-column-widgets-in-flutter-with-example/)


**3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!**  
Pada halaman form ini, elemen input yang saya gunakan adalah `TextFormField` untuk nama produk, harga produk, deskripsi produk, url gambar produk, kategori produk, daerah asal produk, dan stok produk. Setiap elemen `TextFormField` dilengkapi dengan validasi, seperti memeriksa apakah input kosong atau tidak, dan memastikan format angka untuk harga dan stok barang.

**Elemen input Flutter lain yang tidak digunakan:**
- DropdownButtonFormField: elemen untuk memilih item dari list item. Elemen ini berguna jika ada opsi kategori atau pilihan daerah asal yang sudah ditentukan sebelumnya, sehingga user dapat memilih tanpa mengetik.
- Switch: elemen toggle untuk mengubah status *active* atau *non-active*.
- Radio: elemen untuk memilih satu dari beberapa pilihan
- Checkbox: elemen yang memungkinkan user untuk dapat memilih lebih dari satu pilihan.

referensi: [medium](https://medium.com/@anyeon/flutter-input-widget-3c3e492ac97a)

**4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?**  
Pada aplikasi Flutter yang saya buat, tema diatur dengan menggunakan `ThemeData` pada `MaterialApp`. Saya menerapkan tema dengan cara mendefinisikan warna dasar (`primarySwatch`) sebagai warna cokelat dan warna sekunder (`secondary`) dengan warna yang melengkapi, yaitu cokelat keabu-abuan. Mengatur tema seperti ini memastikan bahwa komponen UI, seperti AppBar, tombol, dan elemen lain, secara otomatis menggunakan warna yang seragam, menciptakan tampilan aplikasi yang lebih konsisten. Selain itu, pengaturan `useMaterial3: true` memungkinkan aplikasi untuk menggunakan gaya Material Design terbaru. Berikut adalah kode yang mengatur tema dalam aplikasi heritage craft ini:

````dart
theme: ThemeData(
colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.brown,
).copyWith(secondary: const Color.fromARGB(255, 171, 129, 110)),
useMaterial3: true,
),
````

**5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?**  
Untuk menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter, saya menggunakan metode navigasi `Navigator.push()` dan `Navigator.pushReplacement()`. 
- `Navigator.push` berfungsi untuk menambahkan halaman baru di atas halaman saat ini dalam stack navigasu. Navigator ini cocok saat pengguna mungkin ingin kembali ke halaman sebelumnya menggunakan tombol back. Cara kerjanya adalah dengan menyimpan halaman lama di stack, sehingga pengguna dapat kembali ke halaman tersebut dengan `Navigator.pop` atau dengan tombol back pada perangkat. 
    ```dart
    Navigator.push(
    context,
    MaterialPageRoute(
        builder: (context) => ProductEntryFormPage(),
    ),
    );
    ```
    Dengan `Navigator.push`, pengguna dapat kembali ke halaman sebelumnya dengan tombol back pada perangkat, sehingga cocok untuk halaman yang memungkinkan pengguna untuk kembali.

- `Navigator.pushReplacement` berfungsi untuk mengganti halaman saat ini dengan halaman baru, tanpa menambahkan halaman baru ke stack. Navigator ini cocok untuk halaman seperti splash screen atau layar login yang tidak ingin diakses kembali setelah pengguna pindah ke halaman utama.
    ```dart
    Navigator.pushReplacement(
    context,
    MaterialPageRoute(
        builder: (context) => ProductEntryFormPage(),
    ),
    );
    ```
    Pada onTap di "Tambah Produk", `Navigator.pushReplacement` digunakan untuk membuka `ProductEntryFormPage`. Ini membuat transisi langsung ke halaman `ProductEntryFormPage` dan menghapus halaman sebelumnya dari stack.


 

