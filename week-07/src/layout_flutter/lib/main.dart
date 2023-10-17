import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // added ? to key to correct the code

  Widget get titleSection => Container(
        padding: const EdgeInsets.all(32.0),
        child: Row(
          children: [
            Expanded(
              /* soal 1*/
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /* soal 2*/
                  Container(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: const Text(
                      'Wisata Sejarah di Jawa Timur',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    'Borobudur, Kabupaten Magelang, Jawa Tengah',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            /* soal 3*/
            Icon(
              Icons.star,
              color: Colors.red,
            ),
            const Text('41'),
          ],
        ),
      );

      Column _buildButtonColumn(Color color, IconData icon, String label) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: color),
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: color,
                ),
              ),
            ),
          ],
        );
      }

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Candi Borobudur merupakan bukti keberagaman budaya Indonesia yang kaya.'
        'Arsitektur candi ini mencerminkan penggabungan unsur-unsur Hindu, Buddha, dan Jawa kuno'
        'Candi ini juga menjadi tujuan ziarah bagi umat Buddha, '
        'serta menjadi daya tarik wisata yang populer di Indonesia. '
        'Candi Borobudur dibangun oleh para penganut Buddha Mahayana pada masa kejayaan Dinasti Syailendra. Borobudur pertama kali dibangun atas inisiatif Raja Samaratungga sekitar tahun 824 Masehi',
        softWrap: true, //Dengan memberi nilai softWrap = true, baris teks akan memenuhi lebar kolom sebelum membungkusnya pada batas kata.
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Alvina Marcy Syakirah Permata / 2141720017',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              '../assets/image1.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ]
        ), // changed the body content
      ),
    );
  }
}
