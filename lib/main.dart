import 'package:flutter/material.dart';
import 'package:dice/Gradient_Container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Gradient_Container([
          Colors.amberAccent,
          Colors.indigo,
          Colors.cyanAccent,
        ]),
      ),
    ),
  );
}
