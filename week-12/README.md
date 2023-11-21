## Tugas pertemuan 12 Pemrograman Mobile - Pemrograman Asynchronous ##

Nama : Alvina Marcy Syakirah Permata

NIM : 2141720017

Kelas: TI-3F

Absen : 03

## Praktikum 1
### soal 1 Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.
![Screen shoot](/week-12/docs/p1s1.png)

### soal 2 
![Alt text](/week-12/docs/p1s2.png)

### soal 3
- Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!

![Alt text](/week-12/docs/p1s3.png)

.catchError((_) {...}); digunakan untuk menangani kondisi ketika terjadi kesalahan dalam pemanggilan fungsi 'getData'. Jika terjadi kesalahan, pesan error disimpan dalam variabel result. shingga aplikasi tidak stuck namun tampil pesan kesalahannya

Fungsi substring(0, 450) digunakan untuk mengambil sebagian substring dari teks respons, yaitu karakter mulai dari indeks 0 hingga indeks 449. Hal ini mungkin dilakukan untuk membatasi panjang teks yang ditampilkan atau karena data yang relevan hanya terletak di awal teks respons.

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 3".

![hippo](https://github.com/Marcysp/2141720017-mobile-2023/blob/main/week-12/docs/praktikum1.gif)

### soal 4 
- Jelaskan maksud kode langkah 1 dan 2 tersebut!
![Alt text](/week-12/docs/p2.png)

kode pada langkah 1
membuat 3 fungsi dimana method returnOneAsync() menghasilkan angka 1 dan akan tampil setelah delay selama 3 detik.
method returnTwoAsync() menghasilkan angka 2 dan akan tampil setelah delay selama 3 detik.
method returnThreeAsync() menghasilkan angka 3 dan akan tampil setelah delay selama 3 detik.

lalu pada langkah 2 dibuat method count() yang memiliki proses untuk menjumlahkan hasil dari 3 method di langkah 1 ysehingga menghasilkan angka 6 yang di dapat dari 

returnOneAsync() + returnTwoAsync() + returnThreeAsync()

= 1+2+3 = 6

lalu mengapa baru tampil setelah 9 detik karena masing2 method pada langkah 1 memiliki delay 9 detik

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 4".

angka baru akan muncul setelah 9 detik 
![hippo](https://github.com/Marcysp/2141720017-mobile-2023/blob/main/week-12/docs/praktikum2.gif)


### soal 5
- Jelaskan maksud kode langkah 2 tersebut!
late Completer completer;: Mendeklarasikan variabel completer sebagai objek Completer. Completer digunakan untuk mengontrol suatu operasi asinkron dan menghasilkan objek Future. Penggunaan late menandakan bahwa variabel tersebut akan diinisialisasi sebelum digunakan, meskipun saat deklarasi belum diberikan nilai awal.

ketika method getNumber() di panggil maka ia akan menjalankan method calculate() terlebih dahulu agar ia dapat mengembalikan nilai dari Future tersebut

saat method calculate() di panggil maka Fungsi ini menunggu (await) selama 5 detik menggunakan Future.delayed untuk mensimulasikan operasi yang membutuhkan waktu. Setelah itu, completer diisi dengan nilai 42 menggunakan metode complete.

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 5".

![hippo](https://github.com/Marcysp/2141720017-mobile-2023/blob/main/week-12/docs/praktikum3_soal5.gif)

### soal 6
- Jelaskan maksud perbedaan kode langkah 2 dengan langkah 5-6 tersebut!
pada langkah 2 ketika terjadi eror selama proses 'await Future.delayed', maka Completer akan di selesaikan dengan nilai 42 dan tidak ada penanganan yang dilakukan. 

namun pada langkah 5-6 menggunakan try-catch sehingga jika terjadi kesalahan selama proses 'await Future.delayed' maka akan dilakukan proses lanjutan sehingga nantinya hasil dari Completer bukanlah 42 namun sebuah kalimat 'An error occurred'.

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 6".
![hippo](/week-12/docs/praktikum3_soal6.gif)

### soal 7 Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 7".

![hippo](/week-12/docs/praktikum4_soal7.gif)

### soal 8 Jelaskan maksud perbedaan kode langkah 1 dan 4!
Pada langkah pertama setiap setiap function perlu ditambahkan terlebih dahulu sebagai future kedalam objek futureGroup dan perlu menggunakan method close agar objek tidak dapat menambahkan future lagi, yang selanjutnya setiap function ini akan dijalankan, barulah method then dijalankan. 

Sedangkan pada langkah keempat setiap function langsung dijalankan dan ditunggu hasilnya, sama seperti futureGroup Future.wait juga akan menghasilkan data bertipe list.