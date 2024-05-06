import 'package:flutter/material.dart';

class Textinfo extends StatefulWidget {
  late String label;
  late Icon icon;
  late bool isPassword;
  Textinfo({super.key, required this.label, required this.icon,required this.isPassword});

  @override
  State<Textinfo> createState() => _TextinfoState();
}

class _TextinfoState extends State<Textinfo> {
  late String currrentInput;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          obscureText: widget.isPassword,
          decoration: InputDecoration(
            label: Text(
              widget.label,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            prefixIcon: widget.icon,
            focusColor: Colors.deepPurple,
            fillColor: Colors.deepPurple,
          ),
          onChanged: (value) {
            setState(() {
              currrentInput = value;
            });
          },
        ));
  }
}
