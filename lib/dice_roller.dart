import 'package:flutter/material.dart';
import 'dart:developer' as dev;
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var imageButtomed = 'images/dice-1.png';

  void rolldice() {
    var diceroll = Random().nextInt(6) + 1;
    setState(() => imageButtomed = 'images/dice-$diceroll.png');

    dev.log('The Buttom Has Been Clicked ');
    dev.log('the number is $diceroll');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          imageButtomed,
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: () => rolldice(),
          style: TextButton.styleFrom(
            foregroundColor: Colors.amber,
          ),
          child: const Text(
            'Roll Dice ',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
      ],
    );
  }
}
