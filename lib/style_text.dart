import 'package:flutter/material.dart';

class Styletext extends StatelessWidget {
  const Styletext(this.text, {
    super.key,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 30,
      ),
    );
  }
}
