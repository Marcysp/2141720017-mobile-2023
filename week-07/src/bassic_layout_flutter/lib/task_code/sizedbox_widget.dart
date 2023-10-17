import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() => runApp(MaterialApp(home: MyWidget()));

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network('https://raw.githubusercontent.com/flutter/website/main/examples/layout/sizing/images/pic2.jpg'),
      ],
    );
  }
}


// class MyWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         BlueBox(),
//         const SizedBox(width: 50),
//         BlueBox(),
//         const SizedBox(width: 50),
//         BlueBox(),
//       ],
//     );
//   }
// }

// class MyWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         BlueBox(),
//         const SizedBox(width: 50),
//         BlueBox(),
//         BlueBox(),
//       ],
//     );
//   }
// }

// class MyWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisSize: MainAxisSize.max,
//       children: [
//         BlueBox(),
//         SizedBox(
//           width: 100,
//           height: 100,
//           child: BlueBox(),
//         ),
//         BlueBox(),
//       ],
//     );
//   }
// }

// class MyWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisSize: MainAxisSize.max,
//       children: [
//         BlueBox(),
//         SizedBox(
//           width: 100,
//           child: BlueBox(),
//         ),
//         BlueBox(),
//       ],
//     );
//   }
// }

class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}
