import 'dart:ffi';

import 'package:ecommerce/components/Item.dart';
import 'package:ecommerce/proto/Item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  List<Item> mytab = [
    Item(name: "Hijab", price: 250, quantity: 1),
    Item(name: "Mlaya", price: 720, quantity: 2),
    Item(name: "Moto", price: 250, quantity: 1),
    Item(name: "Video", price: 10, quantity: 20),
    Item(name: "PS4", price: 80, quantity: 3),
  ];
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          elevation: 7.0,
          pinned: true,
          title: Text('you have(${mytab.length}) items'),
          actions: [
            ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red)),
                onPressed: () {
                  print("paying");
                },
                child: const Text(
                  "Pay all now",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ))
          ],
        ),
        SliverFillRemaining(
            child: ListView.builder(
                itemCount: mytab.length,
                itemBuilder: (context, index) {
                  return Items(
                    name: mytab[index].name,
                    price: mytab[index].getPrice(),
                    quantite: mytab[index].quantity,
                  );
                })),
      ],
    );
  }
}
