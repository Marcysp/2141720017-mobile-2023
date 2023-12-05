## Tugas pertemuan 12 Pemrograman Mobile - Pemrograman Asynchronous ##

Nama : Alvina Marcy Syakirah Permata

NIM : 2141720017

Kelas: TI-3F

Absen : 03

### Soal 1

- Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.
- Gantilah warna tema aplikasi sesuai kesukaan Anda.
- Lakukan commit hasil jawaban Soal 1 dengan pesan "W13: Jawaban Soal 1"

![Alt text](docs/p1s1.png)

### Soal 2

- Tambahkan 5 warna lainnya sesuai keinginan Anda pada variabel colors tersebut.
- Lakukan commit hasil jawaban Soal 2 dengan pesan "W13: Jawaban Soal 2"

![Alt text](docs/p1s2.png)

### Soal 3

- Jelaskan fungsi keyword yield* pada kode tersebut!

    keyword yield* digunakan untuk mengembalikan banyak nilai dari suatu stream
    
- Apa maksud isi perintah kode tersebut?

    dari kode tersebut 'Stream.periodic' menghasilkan stream dengan nilai yang berulang setiap periode waktu tertentu. dalam kode ini, setiap detik, 'yield*' akan digunakan untuk menghasilkan nilai dari stream yang disusun dari daftar warna yang ada di 'colors' yang sudah di buat. dan serangkasian warna tersebut akan berubah setiap detik berdasarkan nilai-nilai dari stream yang diberikan oleh Stream.periodic.

### Soal 4

![Alt text](docs/p1s4.gif)

### Soal 5

- Jelaskan perbedaan menggunakan listen dan await for (langkah 9) !

    pada awaitfor cara kerja dengan melakukan perulangan untuk mendapatkan data secara berurutan untuk mengambil data dari stream dengan memanggil method getColors(), lalu setiap value akan disimpan di variabel eventColor di setiap perulangannya. 
    namun blok kode dalam for seperti setState akan dijalankan setelah proses pemanggilan method getColors() selesai dilakukan dan sudah mengembalikan nilai set yang setiap valuenya akan disimpan dalam eventColor.
    sedangkan pada listen() setiap event atau value yang sudah diterima dapat langsung digunakan dan setState dapat dijalankan tanpa perlu menunggu seluruh Stream selesai.

## Praktikum 2
### Soal 6
Jelaskan maksud kode langkah 8 dan 10 tersebut!

- kode langkah 8

![Alt text](docs/p2s6l8.png)

    Dalam langkah kedelapan, objek NumberStream dari file stream.dart dibuat terlebih dahulu. Setelah itu, variabel numberStreamController diakses dengan menyimpan controller dari numberStream ke dalamnya. Data stream dari numberStreamController kemudian akan disimpan dalam variabel stream yang memiliki tipe data Stream. Akhirnya, nilai dari stream ini akan digunakan untuk memperbarui nilai dari lastNumber.

- kode langkah 10

![Alt text](docs/p2s6l10.png)

    Kode ini merupakan metode yang disebut addRandomNumber. Fungsinya adalah untuk menambahkan angka acak ke dalam stream yang dikendalikan oleh objek numberStreamController.
    Metode addRandomNumber() pertama-tama menciptakan objek Random() dengan nama random. Objek ini kemudian digunakan untuk menghasilkan nilai integer acak dalam rentang 0 hingga 9, yang disimpan dalam variabel myNum. Selanjutnya, metode addNumberToSink() dari objek numberStream, yang telah dibuat pada langkah kedelapan sebelumnya, dipanggil. Dengan mengakses addNumberToSink() dan memberikan nilai myNum sebagai argumen, nilai ini akan ditambahkan ke dalam aliran data yang telah dibuat.

![Alt text](docs/p2s6.gif)

### Soal 7

- Jelaskan maksud kode langkah 13 sampai 15 tersebut!
    - kode langkah 13
    ![Alt text](docs/p2s7l13.png)
        - Metode addError() dalam kelas NumberStream digunakan untuk menambahkan kesalahan ke Stream. Kesalahan ini akan diterima oleh pendengar Stream menggunakan metode onError.Stream akan mencetak kesalahan 'Error: Null number received' dan menambahkan kesalahan 'Null number received' ke Stream.

    - kode langkah 14
    ![Alt text](docs/p2s7l14.png)
        - Kode digunakan untuk menangani kesalahan yang terjadi pada Stream. Jika kesalahan terjadi, kode ini akan memperbarui state lastNumber menjadi -1 untuk menunjukkan bahwa kesalahan telah terjadi. kesalahan dapat terjadi jika metode addRandomNumber() memanggil metode addError() pada NumberStream. Metode addError() digunakan untuk menambahkan kesalahan buatan ke Stream.

    - kode langkah 15
    ![Alt text](docs/p2s7l15.png)
        - Metode numberStream.addError() digunakan untuk menambahkan kesalahan ke Stream.sehingga hal ini digunakan untuk sengaja membuat kesalahan 
        
## Praktikum 3
### Soal 3
- Jelaskan maksud kode langkah 1-3 tersebut!
    - langkah 1 : membuat objek StreamTransformer dengan nama transformer. nantinya digunakan untuk memanipulasi atau memfilter data pada Streams.
    - langkah 2 : Kode di atas berfungsi untuk mengelola aliran data dengan menggunakan objek StreamTransformer. Objek ini menerima aliran data yang berisi bilangan bulat dan menghasilkan aliran data dengan nilai juga dalam bentuk bilangan bulat. Pada parameter pertama, apabila aliran data tidak mengalami error, nilai dari aliran tersebut akan diperbarui dengan cara dikalikan dengan 10 dan hasilnya ditambahkan kembali ke dalam aliran data. Selanjutnya, pada parameter kedua, jika terjadi error pada aliran data, nilai dalam aliran tersebut akan diperbarui menjadi -1. Setelah proses selesai, filter ini akan ditutup
    - langkah 3 : Objek transformer yang telah dibuat sebelumnya akan digunakan dalam blok kode ini. Prosesnya akan mengubah data berdasarkan parameter yang telah ditentukan sebelumnya. Jika proses berlangsung tanpa adanya error, nilai yang sebelumnya telah ditambahkan oleh transformer akan digunakan untuk memperbarui nilai dari variabel lastNumber. Sebaliknya, jika terjadi error selama proses, nilai variabel lastNumber akan diatur kembali menjadi -1.
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
![Alt text](docs/p2s6.gif)
