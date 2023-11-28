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
