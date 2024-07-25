import 'package:flutter/material.dart';
import 'package:flutter_application_1/containar_text_user.dart';

void main() {
  runApp(
     const MaterialApp(
      home: Scaffold(
        // backgroundColor: Color.fromRGBO(255, 0, 0, 1),
        body: Containar(
          Color.fromARGB( 255,80, 2, 38),
           Color.fromARGB(255, 177, 5, 120),
        ),
      ),
    ),
  );
}



Widget mycustomertext(String msg) {
  return Text(
    msg,
    style: TextStyle(
      color: Colors.black87,
      fontSize: 30,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
      letterSpacing: -2,
      wordSpacing: 8,
      shadows: const [
        Shadow(
          color: Colors.red,
          offset: Offset(-7, 2),
          blurRadius: 10,
        ),
        Shadow(
          color: Colors.yellow,
          offset: Offset(-10, 2),
          blurRadius: 10,
        ),
        Shadow(
          color: Colors.green,
          offset: Offset(5, 2),
          blurRadius: 10,
        )
      ],
      decoration: TextDecoration.combine([
        TextDecoration.overline,
        TextDecoration.underline,
        TextDecoration.lineThrough,
      ]),
      decorationColor: Colors.blueAccent,
      decorationStyle: TextDecorationStyle.wavy,
      decorationThickness: 5,
    ),
  );
}
