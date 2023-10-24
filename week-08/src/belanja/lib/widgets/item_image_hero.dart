import 'package:belanja/models/item.dart';
import 'package:belanja/pages/image_page.dart';
import 'package:flutter/material.dart';

class ItemImageHero extends StatelessWidget {
  const ItemImageHero({
    super.key,
    required this.item,
  });

  final Item item;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ImagePage(),
              settings: RouteSettings(arguments: item),
            ),
          );
        },
        child: Hero(
          tag: 'image${item.name}',
          child: Image.network(item.imageUrl, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
