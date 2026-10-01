import 'package:flutter/material.dart';

class ButtonClick extends StatefulWidget {
  const ButtonClick({super.key});

  @override
  State<ButtonClick> createState() => _ButtonClickState();
}

class _ButtonClickState extends State<ButtonClick> {
  String message = "Click Me";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(message)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            message = 'Button Clicked.';
          });
        },
        key: const Key('buttonClick'),
      ),
    );
  }
}
