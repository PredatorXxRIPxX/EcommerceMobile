import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ItemSceanPage extends StatefulWidget {
  String id;
  String description;
  String name;
  String price;

  ItemSceanPage(
      {super.key,
      required this.id,
      required this.description,
      required this.name,
      required this.price});

  @override
  State<ItemSceanPage> createState() => _ItemSceanPageState();
}

class _ItemSceanPageState extends State<ItemSceanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
          color: Colors.deepPurple,
          
        ),
      ),
      body: SingleChildScrollView(
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(
          
          ),
          children: [
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
