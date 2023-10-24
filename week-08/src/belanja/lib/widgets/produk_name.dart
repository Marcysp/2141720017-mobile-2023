import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class ProdukName extends StatelessWidget {
  const ProdukName({
    super.key,
    required this.item,
  });

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          item.name.toString(),
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Rp ${item.price.toString()}',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ],
    ));
  }
}
