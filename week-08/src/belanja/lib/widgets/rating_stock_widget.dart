import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/rating_widget.dart';
import 'package:flutter/material.dart';

class RatingStock extends StatefulWidget {
  const RatingStock({
    super.key,
    required this.item,
  });

  final Item item;

  @override
  State<RatingStock> createState() => _RatingStokState();
}

class _RatingStokState extends State<RatingStock> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Rating(item: widget.item),
        ),
        Text(
          'Stok: ${widget.item.stock}',
          style: TextStyle(
            fontSize: 13,
            color: widget.item.stock < 10 ? Colors.red : Colors.green,
          ),
        ),
      ],
    );
  }
}
