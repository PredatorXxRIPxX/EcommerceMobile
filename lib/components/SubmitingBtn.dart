import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SubmitingBtn extends StatefulWidget {
  late String label;
  late Color backgroundColor;
  late Color foregroundColor;
  late String fonctuanility;
  SubmitingBtn(
      {super.key,
      required this.label,
      required this.backgroundColor,
      required this.foregroundColor,
      required this.fonctuanility});

  @override
  State<SubmitingBtn> createState() => _SubmitingBtnState();
}

class _SubmitingBtnState extends State<SubmitingBtn> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor:
            MaterialStatePropertyAll<Color>(widget.backgroundColor),
        foregroundColor:
            MaterialStatePropertyAll<Color>(widget.foregroundColor),
        elevation: const MaterialStatePropertyAll(8.0),
        padding: const MaterialStatePropertyAll<EdgeInsetsGeometry>(
            EdgeInsets.all(20.0)),
      ),
      onPressed: () {
        if (widget.fonctuanility == "login") {
          Navigator.pushReplacementNamed(context, '/login');
        } else {
          Navigator.pushReplacementNamed(context, '/signin');
        }
      },
      child: Text(
        widget.label,
        style: TextStyle(
            color: widget.foregroundColor,
            fontWeight: FontWeight.bold,
            fontSize: 18),
      ),
    );
  }
}
