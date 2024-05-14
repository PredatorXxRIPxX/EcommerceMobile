import 'dart:math';

import 'package:ecommerce/view/ItemSceanPage.dart';
import 'package:flutter/material.dart';

class GridCard extends StatefulWidget {
  final String name;
  final String id;
  final String description;
  final String price;

  const GridCard({
    Key? key,
    required this.id,
    required this.description,
    required this.name,
    required this.price,
  }) : super(key: key);

  @override
  State<GridCard> createState() => _GridCardState();
}

class _GridCardState extends State<GridCard> {
  final List<Color> mybgColors = [
    Colors.red,
    Colors.blue,
    Colors.deepPurple,
    Colors.teal,
    Colors.brown,
  ];
  final Random rand = Random();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ItemSceanPage(
            id: widget.id,
            description: widget.description,
            name: widget.name,
            price: widget.price,
          ),
        ));
      },
      child: Card(
        color: mybgColors[rand.nextInt(mybgColors.length)],
        elevation: 5.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            widget.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
