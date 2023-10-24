import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[300], // Menambahkan background warna untuk footer
      padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 10.0),
      child: Row(
        children: [
          Expanded(
            child: Text('Alvina Marcy Syakirah Permata'),
          ),
          Text('2141720017')
        ],
        // padding: EdgeInsets.all(16.0),
        // color: Colors.grey[200], // berikan warna abu-abu sebagai contoh
        // child: Expanded(
        //   child:
        //
      ),
    );
  }
}
