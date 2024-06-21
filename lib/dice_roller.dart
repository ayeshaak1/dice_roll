import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
  var diceImg = 1;
  
  void rollDice() {
    setState(() {
      diceImg = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/image/dice-$diceImg.png',
              width: 200,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: ElevatedButton(
                onPressed: rollDice,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                  foregroundColor: Colors.black,
                  textStyle: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                child: const Text("Roll Dice"),
              ),
            ),
          ],
        );
  }
}