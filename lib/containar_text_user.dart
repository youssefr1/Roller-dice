

import 'package:flutter/material.dart';
import 'package:flutter_application_1/dice_roller.dart';




class Containar extends StatefulWidget {
  
   const Containar(
    this.color1,
    this.color2, {
    super.key,
  });
  final Color color1;
  final Color color2;

  @override
  State<Containar> createState() => _ContainarState();
}

class _ContainarState extends State<Containar> {
  
  

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
          widget.color1,
            widget.color2,
          ],
        ),
      ),
      child: const Center(
          child:DiceRoller(),
          ),
    );
  }
}

