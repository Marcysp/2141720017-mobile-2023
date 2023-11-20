## Tugas pertemuan 11 Pemrograman Mobile - Dasar Manajemen State ##

Nama : Alvina Marcy Syakirah Permata

NIM : 2141720017

Kelas: TI-3F

Absen : 03

### Praktikum 1

#### Hasil Praktikum 1

Gif

#### Tugas Praktikum 1

##### 2. Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan demikian?
![Screenshot](docs/tp1.2.jpg) 

**Pada praktikum 1 langkah ke 4**
kode export 'plan.dart'; dan export 'task.dart'; digunakan untuk membungkus model-model yang sudah dibuat yang nantinya akan digunakan di berbagai bagian dari aplikasi. dengan adanya file data_layer.dart dan mengekspor model-model tersebut, kita menciptakan satu tempat yang dapat diimpor oleh bagian-bagian lain dari aplikasi kita, sehingga proses impor menjadi lebih teratur dan mudah dikelola.

##### 3. Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat konstanta ?

variabel plan digunakan untuk menyimpan objek dari kelas Plan yang berisi daftar tugas yang akan ditampilkan di layar. Variabel ini digunakan dalam metode _buildList() dan _buildAddTaskButton() untuk membangun daftar tugas dan menambahkan tugas baru ke dalam daftar.

Lalu variabel ini dibuat konstan ini merupakan cara untuk menginisialisasi variabel dengan nilai default.Pembuatan variabel plan sebagai konstanta (const Plan()) di dalam kelas _PlanScreenState mengindikasikan bahwa instance Plan yang dihasilkan adalah sebuah konstanta yang tidak dapat diubah setelah pembuatannya. Dengan kata lain, ini mengisyaratkan bahwa kita tidak akan mengganti plan yang ada di dalam _PlanScreenState. Jika rencananya didefinisikan sejak awal aplikasi dan tidak perlu diubah, maka membuatnya sebagai konstanta dapat membantu mencegah perubahan tidak disengaja di dalam kelas tersebut.

##### 4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!

gif

Pada praktikum 1 mulai dari langkah 1 hingga langkah 9 ini kita membuat sebuah aplikasi yang dapat membuat to-do list dengan struktur kode mencakup :

1. variabel plan untuk menyimpan objek berupa task yang harus di lakukan yang ditetapkan debagai konstanta pada awalnya
2. Appbar dengan judul 'Master Plan Namaku'
3. _buildAddTaskButton(): Metode ini digunakan untuk membuat tombol tambah tugas. Ketika tombol ditekan, kita memperbarui variabel plan dengan menambahkan tugas baru ke dalamnya.
4. _buildList(): Metode ini digunakan untuk membuat daftar tugas dengan menggunakan ListView.builder. Setiap item dalam daftar dirender menggunakan metode _buildTaskTile().
5. _buildTaskTile(): Metode ini mengembalikan widget ListTile yang berisi Checkbox untuk menandai keberhasilan suatu tugas dan TextFormField untuk mengedit deskripsi tugas. Saat terjadi perubahan pada Checkbox atau TextFormField, Anda memperbarui variabel plan sesuai dengan perubahan yang terjadi pada tugas tertentu.

jadi seluruh struktur ini memberikan pengguna kemampuan untuk melihat daftar tugas, menambahkan tugas baru, dan mengedit tugas yang aad melalui UI pengguna yang sederhana.

##### 5. Apa kegunaan method pada Langkah 11 dan 13 dalam lifecyle state ?

- Langkah 11: Tambah Scroll Listener
 Metode initState() dipanggil tepat setelah widget dimasukkan ke dalam pohon widget (widget tree) dan sebelum build() dipanggil pertama kali. Ini adalah tempat yang tepat untuk melakukan inisialisasi yang berkaitan dengan BuildContext. Dalam kode tersebut, initState() digunakan untuk membuat ScrollController dan menambahkan listener kepadanya. Listener ini akan memindahkan fokus ke FocusNode baru setiap kali pengguna melakukan scroll.
![Screenshot](docs/tp1.5.jpg) 

- Langkah 11: Tambah method dispose()
Metode dispose() dipanggil ketika widget ini dihapus dari pohon widget dan akan melepaskan semua sumber daya yang dimiliki oleh widget. Dalam kode Anda, dispose() digunakan untuk membuang ScrollController yang telah dibuat sebelumnya.
![Alt text](docs/tp1.5_2.png)