import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() => runApp(MaterialApp(home: MyWidget()));

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.all(16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.account_circle, size: 50),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Flutter McFlutter',
                      style: Theme.of(context).textTheme.headline6, // headline6 digunakan sebagai alternatif dari headlineSmall
                    ),
                    const Text('Experienced App Developer'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('123 Main Street'),
                Text('415-555-0198'),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: const [
                Icon(
                  Icons.accessibility,
                  size: 50,
                  color: Colors.black,
                ),
                Spacer(flex: 1),
                Icon(
                  Icons.timer,
                  size: 50,
                  color: Colors.black,
                ),
                Spacer(flex: 1),
                Icon(
                  Icons.phone_android,
                  size: 50,
                  color: Colors.black,
                ),
                Spacer(flex: 1),
                Icon(
                  Icons.phone_iphone,
                  size: 50,
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}