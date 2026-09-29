import 'package:flutter/material.dart';

class SwitchTest extends StatefulWidget {
  const SwitchTest({super.key});

  @override
  State<SwitchTest> createState() => _SwitchTestState();
}

class _SwitchTestState extends State<SwitchTest> {
  bool change = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Switch(
          key: const Key('switchBack'),
          value: change,
          onChanged: (value) {
            setState(() {
              change = value;
            });
          },
        ),
      ),
    );
  }
}
