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
![hippo](https://github.com/Marcysp/2141720017-mobile-2023/blob/main/week-12/docs/praktikum2.gif)



