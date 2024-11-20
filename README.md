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

# TUGAS 8
**1. Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?**  
<details><summary></summary>
JSON adalah format yang digunakan untuk menyimpan informasi terstruktur dan menjadi alternatif yang lebih sederhana serta ringan dibandingkan XML (Extensible Markup Language).

Kita perlu membuat model untuk pengambilan atau pengiriman data JSON karena model berfungsi sebagai *blueprint* yang menentukan struktur dan validasi data. Model memastikan bahwa data yang dikirim atau diterima sesuai dengan format yang diharapkan, sehingga meminimalkan risiko error, seperti kesalahan parsing atau tipe data yang tidak cocok. Selain itu, model membantu menjaga konsistensi dalam manipulasi data dan mempermudah proses debugging, developing, serta dokumentasi. Jika tidak membuat model terlebih dahulu, aplikasi mungkin masih dapat berfungsi, tetapi risiko munculnya error meningkat, terutama ketika data tidak sesuai dengan ekspektasi. Tanpa model, pengelolaan data juga menjadi lebih sulit, terutama dalam sistem yang kompleks dengan banyak jenis data.
</details>  

**2. Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini**<details><summary></summary>
Pada tugas ini, library `http` digunakan untuk melakukan komunikasi antara aplikasi Flutter dan backend (Django) melalui permintaan HTTP. Dalam tugas ini, http berguna untuk mengambil data dari backend (seperti data produk dan URL gambar yang di-input oleh user) dan menampilkannya di aplikasi Flutter.
Berikut adalah fungsi-fungsi utama dari library http yang saya implementasikan:
1. Mengirim Permintaan HTTP GET:
    - Dalam aplikasi Flutter, saya menggunakan http untuk mengirim permintaan GET ke backend untuk mendapatkan data produk. Permintaan GET ini mengambil data dari server dengan URL tertentu dan menunggu respons yang berupa data produk dalam format JSON.
    ```dart
    final response = await request.get('http://127.0.0.1:8000/json/');
    ```
    Fungsi ini mengambil data dari backend yang di-hosting di URL http://127.0.0.1:8000/json/. Data produk ini termasuk informasi seperti nama, harga, deskripsi, kategori, stok, dan URL gambar.
2. Mengonversi Respons HTTP ke Format yang Dapat Digunakan:
    - Setelah menerima respons dari backend, data yang diterima dalam bentuk JSON perlu diolah agar dapat digunakan di aplikasi Flutter. Saya mengonversi data JSON ini menjadi objek Dart, seperti Product. 
    ```dart
    var data = response;
    List<Product> listProduct = [];
    for (var d in data) {
      if (d != null) {
        listProduct.add(Product.fromJson(d));
      }
    }
    return listProduct;
    ```
    Fungsi ini memparsing respons JSON dan membuat list dari objek Product, yang kemudian akan ditampilkan di UI aplikasi Flutter.

3. Mengambil URL Gambar dari Backend:
    - Salah satu bagian penting dari tugas ini adalah mengambil URL gambar yang di-input oleh user di backend dan menampilkannya di Flutter. Library http digunakan untuk mengakses data ini (termasuk URL gambar) dari backend.
    ```dart
    Image.network(snapshot.data![index].fields.image, ...);
    ```
    Dengan menggunakan Image.network, aplikasi Flutter dapat memuat gambar berdasarkan URL yang didapatkan dari respons API. URL ini sebelumnya disimpan oleh backend setelah user meng-inputnya saat menambahkan produk.
</details>
 
**3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter**  
<details><summary></summary>

**Fungsi CookieRequest dalam Aplikasi Flutter:**
`CookieRequest` adalah class yang digunakan untuk menangani permintaan HTTP yang menyertakan cookie di dalamnya. Fungsinya adalah untuk memastikan bahwa saat aplikasi Flutter melakukan permintaan (request) ke backend, cookie (termasuk session cookie) yang diperlukan untuk status autentikasi dan sesi pengguna ikut dikirim. Hal ini sangat penting untuk aplikasi yang membutuhkan login atau autentikasi, di mana setiap permintaan harus dapat mengenali pengguna yang sudah login.

Dalam aplikasi web saya yang berbasis Django yang menggunakan session-based authentication, cookie digunakan untuk menjaga agar pengguna tetap "terlogin" dan memiliki akses ke data atau fitur tertentu yang memerlukan hak akses khusus. CookieRequest akan menyimpan dan mengirim cookie ini secara otomatis bersama setiap permintaan HTTP.

Fitur utama CookieRequest meliputi:
- Autentikasi dan Penyimpanan Sesi: Cookie yang digunakan untuk menyimpan informasi sesi pengguna akan secara otomatis disertakan dalam setiap permintaan HTTP setelah pengguna login. Hal ini memastikan bahwa server dapat mengidentifikasi pengguna dan memberikan data atau hak akses yang relevan.
- Mengelola Cookie: Setiap kali server mengirim cookie baru, CookieRequest akan menyimpannya dan menggunakannya dalam permintaan berikutnya, sehingga pengguna tidak perlu login ulang atau kehilangan status otentikasinya.
- Mendukung Request GET dan POST: CookieRequest mendukung pengiriman request dengan metode GET dan POST, yang penting untuk mendapatkan atau mengirim data ke server.

Implementasi CookieRequest pada tugas saya:
1. Context Watcher
    ```dart
    final request = context.watch<CookieRequest>();
    ```
    CookieRequest diambil dari context menggunakan Provider, yang memungkinkan instance CookieRequest dibagikan ke seluruh komponen dalam aplikasi. Ini berarti, ketika pengguna login atau melakukan permintaan lain ke server, CookieRequest akan menjaga cookie dan mengelola sesi pengguna.
2. Login Request:
    ```dart
      final response = await request.login("http://127.0.0.1:8000/auth/login/", {
        'username': username,
        'password': password,
      });
    ```
    Fungsi login() pada CookieRequest digunakan untuk mengirimkan permintaan HTTP POST ke server dengan username dan password yang diinput oleh pengguna. URL yang digunakan (http://127.0.0.1:8000/auth/login/) adalah endpoint Django untuk login, dan permintaan ini akan mengembalikan response dari server yang berisi apakah login berhasil atau tidak. Jika berhasil, CookieRequest akan menyimpan cookie yang berisi informasi sesi pengguna.
3. Cek status login:
    ```dart
    if (request.loggedIn) {
      // logic jika login berhasil
    } else {
      // logic jika login gagal
    }
    ```
    Properti loggedIn pada CookieRequest digunakan untuk memeriksa apakah pengguna berhasil login. Jika login berhasil (loggedIn bernilai true), pengguna akan diarahkan ke halaman utama (MyHomePage()), dan cookie dari sesi login akan disimpan. Jika login gagal, akan ditampilkan pesan error dalam bentuk AlertDialog.

**Mengapa Instance CookieRequest Perlu Dibagikan ke Semua Komponen Aplikasi:**
1. Manajemen sesi yang konsisten
Ketika pengguna login, sesi tersebut harus dikenali oleh semua komponen aplikasi yang memerlukan otentikasi. Dengan membagikan instance CookieRequest ke seluruh komponen, setiap permintaan yang memerlukan informasi sesi, seperti cookie atau token, dapat mengaksesnya tanpa perlu membuat ulang instance baru.

Misalnya, setelah login, komponen yang menampilkan data pengguna, halaman transaksi, atau fitur-fitur lain yang memerlukan otentikasi dapat menggunakan CookieRequest yang sama, sehingga aplikasi dapat terus mengenali pengguna sebagai "logged in."

2. Akses Autentikasi yang mudah
CookieRequest menyimpan informasi otentikasi seperti cookie, yang diperlukan untuk melakukan permintaan HTTP ke server yang memerlukan sesi login. Dengan membagikannya ke seluruh komponen menggunakan mekanisme seperti Provider, setiap komponen dapat dengan mudah mengakses instance yang sama tanpa harus mengelola otentikasi secara manual.

Sebagai contoh, jika ada komponen di aplikasi yang perlu mengambil data pengguna setelah login, mereka bisa langsung menggunakan CookieRequest yang sudah memiliki cookie sesi login. Ini mencegah pengguna harus login ulang atau komponen harus melakukan login terpisah.

3. Navigasi yang lancar antar halaman aplikasi
Dengan CookieRequest yang dibagikan, aplikasi dapat dengan mudah mengelola navigasi antar halaman yang memerlukan autentikasi. Jika pengguna sudah login di satu halaman, halaman lain tidak perlu memverifikasi ulang status login karena sudah memiliki akses ke instance CookieRequest yang menyimpan status tersebut.
</details>


**4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.**  
<details><summary></summary>

Mekanisme pengiriman data dari input hingga dapat ditampilkan di aplikasi Flutter biasanya melibatkan beberapa tahapan penting, mulai dari pengambilan data input, pengiriman ke server (backend), pemrosesan data di backend, hingga pengiriman data kembali ke Flutter untuk ditampilkan. Berikut adalah penjelasan mekananismenya:
1. Input data di Flutter
    Proses dimulai dengan pengguna yang menginput data melalui aplikasi Flutter. Pengguna bisa menggunakan form input seperti TextField, DropdownButton, atau widget lainnya untuk memasukkan informasi.

    Contoh: Pengguna mengisi form login atau form untuk menambahkan produk di aplikasi e-commerce saya.
    ```dart
    TextField(
      controller: _usernameController,
      decoration: InputDecoration(labelText: 'Username'),
    ),
    TextField(
      controller: _passwordController,
      decoration: InputDecoration(labelText: 'Password'),
      obscureText: true,
    ),
    ```
2. Pengambilan data dari input
    Data yang diinput oleh pengguna diambil dari widget input menggunakan controller seperti TextEditingController. Controller ini berfungsi untuk menyimpan teks yang diinput pengguna.

    Contoh: Mengambil nilai dari input login.
    ```dart
    String username = _usernameController.text;
    String password = _passwordController.text;
    ```
3. Pengiriman data ke backend (server)
    Setelah data diambil dari input, data ini kemudian dikirim ke backend untuk diproses. Pengiriman data ke server biasanya dilakukan melalui HTTP Request menggunakan library seperti http atau package khusus seperti CookieRequest (untuk keperluan autentikasi dengan session management).

    Contoh: Mengirim data login ke server.
    ```dart
    final response = await request.login(
      "http://localhost:8000/auth/login/", 
      {'username': username, 'password': password}
    );
    ```
    Metode HTTP yang biasa digunakan adalah:
    - POST (untuk mengirimkan data yang harus diproses server, seperti login, register, atau menambah data).
    - GET (untuk mengambil data dari server, misalnya menampilkan daftar produk).

4. Pemrosesan data di Django
    Setelah server menerima request dari aplikasi Flutter, server akan memproses data tersebut sesuai dengan permintaan. Pemrosesan ini bisa melibatkan:

    - Validasi data input.
    - Autentikasi jika berkaitan dengan login atau akses ke data privat.
    - Pengolahan data seperti menambah, mengedit, atau mengambil data dari database.

    Contoh: Di backend (Django), server memeriksa kredensial login dan mengirimkan respons.

    ```python
    def login(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(username=username, password=password)
        if user is not None:
            login(request, user)
            return JsonResponse({"message": "Login berhasil", "username": username})
        return JsonResponse({"message": "Login gagal"}, status=401)
    ```

5. Pengiriman Response dari Django ke Flutter
    Setelah backend selesai memproses data, server akan mengirimkan respons kembali ke aplikasi Flutter. Respons ini biasanya berupa data JSON atau pesan status yang menunjukkan apakah operasi berhasil atau gagal.

    Contoh: Jika login berhasil, server mengirimkan respons JSON dengan pesan "Login berhasil" dan nama pengguna.

    ```json
    {
      "message": "Login berhasil",
      "username": "namira"
    }
    ```

6. Pengolahan respons di Flutter
    Di aplikasi Flutter, respons yang diterima dari server kemudian diproses. Data ini bisa disimpan untuk digunakan di berbagai bagian aplikasi atau langsung ditampilkan kepada pengguna. Jika respons berupa data JSON, Flutter akan melakukan deserialisasi (mengubah JSON menjadi objek Dart) untuk diolah lebih lanjut.

    Contoh: Memeriksa respons login.
    ```dart
    if (response['message'] == "Login berhasil") {
      // Simpan informasi login pengguna
      String username = response['username'];

      // Arahkan pengguna ke halaman beranda
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    }
    ```

7. Menampilkan data di UI Flutter
    Setelah data diproses di aplikasi, langkah terakhir adalah menampilkan data tersebut kepada pengguna. Data ini bisa ditampilkan menggunakan berbagai widget Flutter seperti Text, ListView, atau GridView. Jika data tersebut merupakan respons dari server (misalnya, daftar produk yang diambil dari database), aplikasi Flutter akan menampilkan data tersebut dalam format yang diinginkan.

    Contoh: Menampilkan data produk yang diambil dari server di ListView.
    ```dart
    ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(products[index].name),
          subtitle: Text('Price: ${products[index].price}'),
        );
      },
    );
    ```

Mekanisme ini memungkinkan aplikasi Flutter berinteraksi dengan server backend untuk mendapatkan data yang dinamis dan sesuai dengan kebutuhan pengguna.
</details>

**5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.**  
<details><summary></summary>

Mekanisme autentikasi dari login, register, hingga logout melibatkan interaksi antara aplikasi Flutter dan backend Django melalui beberapa tahap, termasuk pengiriman input data, pemrosesan di server, serta penyimpanan sesi dan cookie. Berikut adalah penjelasan mekanisme autentikasi, mulai dari input data hingga pengguna berhasil masuk ke menu aplikasi di Flutter:

1. Proses Register 
  - Input data akun di Flutter
    Pengguna memulai dengan mengisi form pendaftaran di aplikasi Flutter, seperti memasukkan nama pengguna, email, dan kata sandi. Data ini dikirim ke backend Django untuk diproses.

    Contoh form input di Flutter:
    ```dart
    final response = await request.post(
      "http://127.0.0.1:8000/auth/register/",
      {
        'username': _usernameController.text,
        'email': _emailController.text,
        'password1': _passwordController.text,
        'password2': _confirmPasswordController.text,
      },
    );
    ```
  - Pemrosesan data di Django
    Django menerima data yang dikirim oleh Flutter melalui request POST dan memeriksa apakah semua data valid. Jika valid, Django akan membuat akun baru dan menyimpannya ke dalam database.
    Contoh kode di Django:
    ```python
    def register(request):
    if request.method == 'POST':
        username = request.POST['username']
        password1 = request.POST['password1']
        password2 = request.POST['password2']
        email = request.POST['email']
        
        if password1 == password2:
            user = User.objects.create_user(username=username, email=email, password=password1)
            user.save()
            return JsonResponse({"message": "Akun berhasil dibuat!"})
        else:
            return JsonResponse({"message": "Kata sandi tidak cocok!"}, status=400)
    ```
  - Respons kembali ke Flutter
    Jika registrasi berhasil, Django mengirimkan respons ke Flutter berupa pesan sukses, dan pengguna akan diarahkan ke halaman login. Jika ada kesalahan, Django mengirim pesan error, yang kemudian ditampilkan di Flutter.
    ```dart
    if (response['message'] == "Akun berhasil dibuat!") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
    }
    ```
2. Proses Login
  - Input data login di Flutter
    Pengguna memasukkan nama pengguna dan kata sandi di aplikasi Flutter. Data ini dikirim ke Django melalui HTTP request untuk diverifikasi.
    ```dart
    final response = await request.login(
      "http://127.0.0.1:8000/auth/login/",
      {
        'username': _usernameController.text,
        'password': _passwordController.text,
      },
    );
    ```
  - Verifikasi di Django
    Django menerima request dan memverifikasi apakah nama pengguna dan kata sandi sesuai dengan data yang ada di database. Jika cocok, Django membuat sesi (session) dan cookie yang menyimpan status login pengguna.

    Contoh pemrosesan login di Django:
    ```python
    def login_view(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(request, username=username, password=password)
        
        if user is not None:
            login(request, user)  # Membuat sesi untuk pengguna
            return JsonResponse({"message": "Login berhasil", "username": username})
        else:
            return JsonResponse({"message": "Login gagal. Periksa kembali username dan password."}, status=401)
    ```
  - Penyimpanan sesi di CookieRequest
    Ketika Django mengirim respons login berhasil, sesi yang dibuat di server disimpan dalam bentuk cookie di aplikasi Flutter menggunakan library CookieRequest. Ini penting untuk menjaga status login pengguna dan memungkinkan pengaksesan endpoint API yang memerlukan otentikasi.

    Contoh di Flutter:
    ```dart
    if (request.loggedIn) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
    }
    ```
  - Tampilnya menu di Flutter
    Jika login berhasil, pengguna diarahkan ke halaman utama (home) atau menu aplikasi di Flutter, yang hanya bisa diakses jika pengguna sudah terautentikasi. Informasi tentang sesi dan status login disimpan sehingga tidak perlu login ulang.

3. Proses Logout
  - Proses Logout di Flutter
    Pengguna menekan tombol "Logout" di aplikasi Flutter. Aplikasi kemudian mengirim permintaan ke backend Django untuk menghapus sesi dan cookie pengguna.

    Contoh request logout di Flutter:
    ```dart
    await request.logout("http://127.0.0.1:8000/auth/logout/");
    ```
  - Hapus sesi di Django
    Django menerima permintaan logout dan akan menghapus sesi pengguna di server, sehingga status login menjadi non-aktif.

    Contoh kode di Django:
    ```python
    def logout_view(request):
      logout(request)  # Menghapus sesi pengguna
      return JsonResponse({"message": "Logout berhasil"})
    ```
  - Pengarahan kembali ke halaman login di Flutter
    Setelah logout berhasil, pengguna diarahkan kembali ke halaman login, dan status login dihapus dari aplikasi.
    ```dart
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
    ```
Mekanisme Keseluruhan Autentikasi:
1. Register:
  - Flutter mengirim data ke Django melalui HTTP POST.
  - Django memvalidasi dan menyimpan data akun.
  - Pengguna mendapat respons sukses atau error.
2. Login:
  - Flutter mengirim kredensial ke Django.
  - Django memverifikasi kredensial, membuat sesi, dan mengirim cookie.
  - Flutter menyimpan cookie dan mengalihkan pengguna ke halaman utama.
3. Logout:
  - Flutter mengirim request logout ke Django.
  - Django menghapus sesi.
  - Flutter menghapus status login dan mengarahkan pengguna ke halaman login.
Dengan mekanisme ini, aplikasi Flutter dan Django berkolaborasi untuk mengelola autentikasi pengguna, menjaga status login, dan memberikan akses ke fitur yang sesuai dengan status autentikasi.
</details>

**6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).**  
<details><summary></summary>

1. Implementasi fitur registrasi pada proyek django  
Saya memulai dengan menambahkan aplikasi autentikasi ke proyek Django untuk menangani proses registrasi, login, dan logout. Saya menambahkan aplikasi autentikasi tersebut ke daftar INSTALLED_APPS di file settings.py. Untuk memungkinkan akses lintas domain, saya juga menginstal library django-cors-headers, menambahkannya ke INSTALLED_APPS, dan menambahkan corsheaders.middleware.CorsMiddleware di bagian middleware. Selanjutnya, saya mengatur routing URL dengan menambahkan path ke aplikasi autentikasi di file urls.py. Saya membuat fungsi view untuk login, registrasi, dan logout, serta menambahkan file urls.py di aplikasi autentikasi untuk mengatur rute URL.

2. Membuat halaman login di proyek Flutter  
Saya menginstal package provider dan pbp_django_auth untuk menangani autentikasi di Flutter dengan menjalankan perintah flutter pub add provider dan flutter pub add pbp_django_auth. Kemudian, saya mengonfigurasi root widget di main.dart untuk menyediakan CookieRequest ke seluruh child widget menggunakan Provider. Saya membuat dua file baru, login.dart dan register.dart, untuk halaman login dan registrasi. Agar pengguna hanya dapat mengakses halaman tertentu setelah login, saya mengganti home: MyHomePage() dengan home: const LoginPage() di main.dart. Saya juga mengatur form login dan registrasi agar mengarah ke endpoint Django yang sesuai.

3. Membuat Model Kustom untuk Proyek Flutter  
Saya mengonversi hasil JSON dari Django menjadi model Dart menggunakan QuickType. Dengan mengatur tipe source menjadi JSON dan bahasa menjadi Dart, saya menyalin data JSON ke QuickType dan mengonversinya menjadi model Dart dengan nama Product. Saya menambahkan kode hasil QuickType ke dalam file lib/models/product_entry.dart.

4. Membuat halaman daftar item dari endpoint JSON di Django  
Di halaman daftar produk, saya membuat card yang menampilkan nama, harga, dan deskripsi produk. Untuk itu, saya membuat file model di lib/models/product_entry.dart untuk memetakan data JSON dari Django menggunakan QuickType. Saya menambahkan package http untuk mengambil data dari endpoint Django dan menampilkan produk dengan FutureBuilder. Setiap card di halaman ini hanya menampilkan informasi dasar produk (nama, harga, deskripsi).

5. Membuat halaman detail produk  
Setelah membuat card untuk daftar produk, saya menambahkan halaman detail produk. Saat nama produk di card diklik, aplikasi akan menavigasi ke halaman baru yang menampilkan detail lengkap produk, termasuk gambar, stok, asal produk, dan detail lainnya. Untuk ini, saya membuat file baru product_details.dart dan menambahkan navigasi di card menggunakan Navigator.push() untuk menampilkan halaman detail.

6. Menghubungkan Form Flutter ke Layanan Django  
Di Django, saya menambahkan fungsi create_product_flutter() di file main/views.py untuk menerima request POST dari Flutter, menggunakan dekorator @csrf_exempt agar terhindar dari error CSRF. Saya menambahkan rute baru di file urls.py untuk fungsi ini. Di Flutter, saya mengubah tombol di form produk agar dapat mengirim data POST ke Django menggunakan request.postJson(), dan menambahkan SnackBar untuk memberikan notifikasi jika data berhasil dikirim. Setelah data terkirim, aplikasi akan kembali ke halaman utama menggunakan Navigator.pushReplacement().

7. Setelah memastikan semua file diimport dengan benar, saya menjalankan aplikasi Flutter untuk menguji penambahan dan penampilan data Product. Hasilnya, produk yang ditambahkan melalui situs Django berhasil ditampilkan di aplikasi Flutter, menandakan bahwa integrasi telah berjalan dengan baik.

8. Melakukan add, commit, push ke GitHub
</details>