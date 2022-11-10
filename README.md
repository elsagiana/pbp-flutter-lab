# README TUGAS 7

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

