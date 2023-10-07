import 'package:flutter/material.dart';

class InputAndSelection extends StatelessWidget {
  const InputAndSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: false,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Nama',
      ),
    );
  }
}
