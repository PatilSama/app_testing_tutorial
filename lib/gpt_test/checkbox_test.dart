import 'package:flutter/material.dart';

class CheckboxTest extends StatefulWidget {
  const CheckboxTest({super.key});

  @override
  State<CheckboxTest> createState() => _CheckboxTestState();
}

class _CheckboxTestState extends State<CheckboxTest> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Checkbox(
          value: checked,
          onChanged: (value) {
            setState(() {
              checked = value!;
            });
          },
        ),
      ),
    );
  }
}
