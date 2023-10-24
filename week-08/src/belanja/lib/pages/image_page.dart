import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text(itemArgs.name), // menampilkan nama item di app bar
      ),
      body: Center(
        child: Hero(
          tag: 'image${itemArgs.name}', // tag harus sama dengan yang Anda tetapkan di `ItemImage`
          child: Image.network(itemArgs.imageUrl, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
