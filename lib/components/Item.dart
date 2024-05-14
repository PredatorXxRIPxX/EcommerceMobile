import 'dart:ffi';

import 'package:ecommerce/components/SubmitingBtn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Items extends StatefulWidget {
  String name;
  double price;
  int quantite;
  Items({required this.name, required this.price,required this.quantite});

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        margin: const EdgeInsets.all(12.0),
        elevation: 6.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 21),
                    ),
                    Text(
                      widget.price.toString(),
                      style: const TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      widget.quantite.toString(),
                      style: const TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: SubmitingBtn(
                          label: "Buy Only",
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          fonctuanility: ""),
                    )
                  ],
                ),
              ),
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}
