import 'package:flutter/material.dart';

class Text_Style extends StatelessWidget {
  Text_Style(this.Showing_Text, {super.key});

  final String Showing_Text;

  @override
  Widget build(context) {
    return Text(
      Showing_Text,
      style: const TextStyle(
        color: Color.fromARGB(255, 219, 244, 54),
        fontSize: 25,
      ),
    );
  }
}
