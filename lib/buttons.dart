import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  MyButtons({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: const Color.fromARGB(255, 24, 23, 23),
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
