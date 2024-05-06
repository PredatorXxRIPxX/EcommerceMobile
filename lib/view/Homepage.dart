import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    late String searchBar;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          margin: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration:const InputDecoration(
                hintText: "search",
                hintStyle: TextStyle(color: Colors.grey),
                focusColor: Colors.deepPurple,
                fillColor: Colors.deepPurple
              ),
              onChanged: (value) {
                setState(() {
                  searchBar = value;
                });
              },
            ),
          ),
        ),
        actions:const [
          Icon(Icons.notifications,color: Colors.deepPurple,)
        ],
      ),
      body: Text("hello"),
    );
  }
}
