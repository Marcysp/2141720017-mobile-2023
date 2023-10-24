import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class Rating extends StatefulWidget {
  const Rating({
    super.key, 
    required this.item,
  });

  final Item item;

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        for (var i = 0; i < 5; i++)
      (i < widget.item.rating.floor())
      ? Icon(Icons.star, color: Colors.amber, size: 13)
      : Icon(Icons.star, color: Colors.grey[700], size: 13),

      const SizedBox(width: 3),
      Text(widget.item.rating.toString(),
      style: TextStyle(fontSize: 13),),
      ],
    );
  }
}