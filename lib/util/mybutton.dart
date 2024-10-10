import 'package:flutter/material.dart';

class Mybutton extends StatefulWidget {
  final String text;
  VoidCallback onPressed;
  Mybutton({super.key, required this.text, required this.onPressed});

  @override
  State<Mybutton> createState() => _MybuttonState();
}

class _MybuttonState extends State<Mybutton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: widget.onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: Theme
          .of(context)
          .primaryColor,
      child: Text(widget.text,
        style: TextStyle(
          color: Colors.white,
        ),),
    );
  }
}
