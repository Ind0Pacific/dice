import 'package:flutter/material.dart';
import 'dart:math';
import 'package:dice/Text_Style.dart';

final randamizer = Random();

class Dice_Roller extends StatefulWidget {
  const Dice_Roller({super.key});

  @override
  State<Dice_Roller> createState() {
    return _Dice_Roller_State();
  }
}

class _Dice_Roller_State extends State<Dice_Roller> {
  var Active_Dice_Image = 'assets/images/dice-1.png';

  void roll_dice() {
    var Dice_Image_Number = randamizer.nextInt(6) + 1;
    setState(() {
      Active_Dice_Image = "assets/images/dice-$Dice_Image_Number.png";
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(Active_Dice_Image, width: 500, height: 500),
        TextButton(
          onPressed: roll_dice,
          style: TextButton.styleFrom(
            padding: EdgeInsets.only(top: 70),
            foregroundColor: Colors.red,
            textStyle: TextStyle(fontSize: 35),
          ),
          child: Text_Style("ROLL IT"),
        ),
      ],
    );
  }
}
