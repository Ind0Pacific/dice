import 'package:flutter/material.dart';
import 'package:dice/dice_roller.dart';

const Start_Alignment = Alignment.center;
const End_Alignment = Alignment.topRight;

class Gradient_Container extends StatelessWidget {
  Gradient_Container(this.colors_, {super.key});

  final List<Color> colors_;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors_,
          begin: Start_Alignment,
          end: End_Alignment,
        ),
      ),

      child: Center(child: Dice_Roller()),
    );
  }
}
