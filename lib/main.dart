import 'package:flutter/material.dart';
import 'package:dice_roll/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromRGBO(255, 171, 145, 1),
          Color.fromRGBO(179, 157, 219, 1),
        ),
      ),
    ),
  );
}
