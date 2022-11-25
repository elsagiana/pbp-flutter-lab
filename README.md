[README Tugas 7](https://github.com/elsagiana/pbp-flutter-lab#tugas-7)

[README Tugas 8](https://github.com/elsagiana/pbp-flutter-lab#tugas-8)

[README Tugas 9](https://github.com/elsagiana/pbp-flutter-lab#tugas-9)

# TUGAS 7

## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.

Stateless widget merupakan widget yang tidak berubah atau immutable. Stateless widget bersifat statis. State dari stateless widget tidak dapat diubah selama app berjalan.

Stateful widget merupakan widget yang dapat berubah atau mutable. Stateful widget bersifat dinamis. State dari stateful widget dapat berubah ketika aplikasi berjalan. Tampilannya juga dapat berubah jika diberikan action tertentu.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

1. **Scaffold**: Untuk mengimplementasikan seluruh elemen visual desain
2. **AppBar**: Untuk membuat bar yang berisi judul di heading aplikasi
3. **Text**: Untuk menampilkan teks pada aplikasi
4. **TextStyle**: Untuk melakukan styling pada text
5. **Icon**: Untuk menampilkan icon
6. **Center**: Untuk alignment center
7. **Column**: Untuk layouting secara vertikal
8. **Row**: Untuk layouting secara horizontal
9. **Container**: Untuk menyimpan widget lain dan mengatur padding
10. **FloatingActionButton**: Untuk men-trigger suatu action pada aplikasi
11. **Visibility**: Untuk visibilitas elemen

## Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

Fungsi dari `setState()` adalah menginformasikan framework bahwa terjadi perubahan pada internal state suatu object yang berdampak pada tampilan user interface aplikasi sehingga framework akan menjadwalkan build untuk meng-update State Object tersebut. Fungsi `setState()` berlaku pada stateful widget. Variabel yang dapat terdampak oleh method `setState()` adalah `_counter`.  

## Jelaskan perbedaan antara const dengan final.

`const` merupakan variabel yang diinisialisasi ketika kompilasi terjadi sehingga value dari variabel tersebut akan tetap terinisialisasi dan tersimpan di memori walaupun value-nya tidak digunakan. Compile time dari `const` bersifat konstan. 

`final` merupakan variabel yang hanya dapat di-set satu kali saja (immutable) dan diinisialisasi ketika diakses. `final` bersifat runtime-constant sehingga value-nya dapat di-assign ketika runtime.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

1. Membuat program flutter baru bernama `counter_7` dengan menjalankan perintah `flutter create counter_7`.
2. Kemudian, masuk ke direktori proyek dengan menjalankan perintah `cd counter_7`.
3. Mengubah title dari `Material App` dan `MyHomePage` menjadi Program Counter.
4. Menambahkan fungsi `_decrementCounter()` pada class `_MyHomePageState` untuk melakukan decrement pada variabel `_counter`. Decrement hanya akan berlaku jika `_counter` bernilai lebih dari 0.
5. Pada children dari body `Scaffold`, ditambahkan kondisional untuk tampilan teks GENAP atau GANJIL dan styling warnanya. Jika `_counter` bernilai genap maka tulisan yang muncul adalah GENAP dengan warna merah dan jika `_counter` bernilai ganjil maka tulisan yang muncul adalah GANJIL dengan warna biru.
6. Mengatur `floatingActionButton` dengan membuat dua `FloatingActionButton` dengan mengatur fungsi yang tertrigger, tooltip, serta icon untuk masing-masing decrement dan increment, serta memasukkannya ke dalam `Container`.
7. Mengatur padding button.
8. Menambahkan kondisional untuk mengatur visibilitas button decrement, yaitu button akan hilang jika variabel `_counter` bernilai 0.


# TUGAS 8

## Jelaskan perbedaan `Navigator.push` dan `Navigator.pushReplacement`.

`Navigator.push` digunakan untuk menambahkan *page* baru ke dalam *stack*. *Page* baru tersebut akan berada di atas page yang sudah ada. Sedangkan `Navigator.pushReplacement` digunakan untuk menambahkan *page* baru ke dalam *stack* dengan mengganti *page* saat ini dengan *page* baru yang baru ditambahkan (di-*push*).

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

1. **Scaffold**: Untuk mengimplementasikan seluruh elemen visual desain
2. **AppBar**: Untuk membuat bar yang berisi judul di heading aplikasi
3. **Text**: Untuk menampilkan teks pada aplikasi
4. **TextStyle**: Untuk melakukan styling pada text
5. **Icon**: Untuk menampilkan icon
6. **Center**: Untuk alignment center
7. **Column**: Untuk layouting secara vertikal
8. **Row**: Untuk layouting secara horizontal
9. **Container**: Untuk menyimpan widget lain dan mengatur padding
10. **Padding**: Untuk mengatur child widgetnya agar ada dalam ukuran padding
11. **Form**: Untuk menyimpan semua widget form field
12. **SingleChildScrollView**: Untuk membuat widget dapat di-scroll agar konten bisa terlihat sesuai ukuran screen
13. **TextFormField**: Untuk meminta input dari user dalam bentuk teks
14. **Expanded**: Untuk membuat widget child memperlebar ukurannya agar sesuai dengan main axis
15. **Drawer**: Untuk navigasi page dalam aplikasi
16. **Card**: Untuk menampilkan informasi dalam bentuk card
17. **TextButton**: Untuk membuat simple flat button
 

## Sebutkan jenis-jenis event yang ada pada Flutter (contoh: `onPressed`).

1. `onPressed`
2. `onChanged`
3. `onSaved`
4. `onTap`

## Jelaskan bagaimana cara kerja `Navigator` dalam "mengganti" halaman dari aplikasi Flutter.

`Navigator` bekerja dengan menggunakan prinsip *stack*. Untuk mengganti halaman ke halaman selanjutnya, method `Navigator.push()` digunakan. Sedangkan, method `Navigator.pop()` digunakan untuk mengganti ke halaman sebelumnya. Halaman pertama (*home page*) akan berada dalam *bottom of stack*. Setiap method `Navigator.push()` dipanggil, halaman baru akan dimasukkan ke dalam stack yaitu di atas halaman yang sudah ada.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

1. Membuat file baru bernama `form.dart` untuk halaman form, `data.dart` untuk halaman tampilan data yang dimasukkan melalui form, dan `drawer.dart` untuk membuat drawer menu.
2. Pada setiap file akan ditambahkan import tiga file yang lain.
3. File `drawer.dart` berisi kode untuk drawer yang berfungsi untuk routing tiga halaman yang ada pada aplikasi (halaman counter, halaman form, dan halaman *data budget*)
4. Drawer ditambahkan pada file `main.dart`, `form.dart`, dan `data.dart`.
5. Membuat form pada halaman Form Budget (file `form.dart`) untuk meminta input judul budget, nominal budget, dan dropdown tipe budget.
6. Melakukan validasi input dan membuat batasan untuk input nominal agar angka saja.
7. Menambahkan button pada halaman form.
8. Object Budget akan terbuat saat button pada halaman form diklik dan menyimpannya pada list.
9. Menampilkan data yang telah diinput dari form pada halaman Data Budget (file `data.dart`) dengan memanfaatkan Object dan List.


# TUGAS 9

## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

Bisa, dengan menggunakan library `JSON Serializeable`. 
Penggunaan JSON serializeable lebih baik ketika proyek yang dikerjakan berskala besar karena dapat mengurangi waktu yang dibutuhkan dan kemungkinan error.
Pembuatan model sebelum pengambilan data lebih baik digunakan saat JSON model pada proyek tidak terlalu banyak.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

1. **Scaffold**: Untuk mengimplementasikan seluruh elemen visual desain
2. **AppBar**: Untuk membuat bar yang berisi judul di heading aplikasi
3. **Text**: Untuk menampilkan teks pada aplikasi
4. **TextStyle**: Untuk melakukan styling pada text
5. **Drawer**: Untuk navigasi page dalam aplikasi
6. **Center**: Untuk alignment center
7. **Column**: Untuk layouting secara vertikal
8. **Row**: Untuk layouting secara horizontal
9. **Container**: Untuk menyimpan widget lain dan mengatur padding
10. **Padding**: Untuk mengatur child widgetnya agar ada dalam ukuran padding
11. **SingleChildScrollView**: Untuk membuat widget dapat di-scroll agar konten bisa terlihat sesuai ukuran screen
12. **TextButton**: Untuk membuat simple flat button
13. **FutureBuilder**: Untuk memanggil future function yaitu `fetchMyWatchList()` dan saat result terbentuk maka builder function akan build widget-nya
14. **SizedBox**: Untuk membuat box dengan ukuran tertentu
15. **InkWell**: Untuk membuat box judul dapat ditekan
16. **ListView**: Untuk menampilkan item dalam bentuk list

## Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.

Pada proyek, perlu ditambahkan dependency `http` agar dapat bertukar data melalui HTTP request. 
Kemudian, http request akan dibuat ke web service dengan menggunakan dependency `http`. 
Terdapat fungsi `fetch()` untuk mengambil data dari URL yang diinginkan. 
Lalu, objek yang didapat dikonversikan ke dalam model yang dibuat pada proyek.
Pada file di folder model terdapat kode-kode dengan method toJson dan fromJson. Hal ini karena hasil dari request suatu web service dengan method GET adalah JSON.
Oleh karena itu, fromJson digunakan untuk mengonversi data agar Flutter mengenali JSON tersebut sebagai objek class pada proyek.
Selain itu, method toJson digunakan untuk melakukan pengiriman data ke web service.
Hasil konversi model akan ditampilkan dengan FutureBuilder.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

1. Melakukan refactor file dengan membuat dua folder baru, yaitu `model` dan `page`. Lalu, memindahkan seluruh file kecuali `main.dart` ke dalam folder page.
2. Pada folder `model` membuat file baru bernama `mywatchlist.dart`
3. Menyalin data JSON Tugas 3 dari `http://django-assignment-elsa.herokuapp.com/mywatchlist/json/` kemudian menempelkan pada situs web Quicktype untuk membuat model yang sesuai.
4. Menyalin model hasil dari Quicktype ke dalam file `mywatchlist.dart`
5. Menambahkan dependensi http pada proyek dengan melakukan `flutter pub add http`.
6. Menambahkan kode `<uses-permission android:name="android.permission.INTERNET" />` pada file `android/app/src/main/AndroidManifest.xml`.
7. Pada folder `page` membuat file `mywatchlistpage.dart` dan `mywatchlistdetail.dart`
8. Pada file `mywatchlistpage.dart` menambahkan import yang dibutuhkan.
9. Pada file `mywatchlistpage.dart` akan dilakukan pengambilan data dari `http://django-assignment-elsa.herokuapp.com/mywatchlist/json/` dengan menggunakan `http.get`. Lalu, akan diolah dan dimasukkan ke dalam `listMyWatchList`
10. Menampilkan judul dari setiap film.
11. Menambahkan detail page untuk masing-masing film dan melakukan navigasi ke halaman detail jika title ditekan.
12. Pada file `mywatchlistdetail.dart`, menambahkan variabel `myWatchList` pada `class MyWatchListDetail` dan `_myWatchList` pada `class _MyWatchListDetailState`. 
13. Menampilkan detail tiap film, berupa judul, release date, rating, status ditonton, dan review.
14. Menambahkan tombol Back untuk kembali ke halaman list judul film.