import 'package:flutter/material.dart';

class DialogTest extends StatelessWidget {
  const DialogTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (_) {
                return AlertDialog(title: Text('Hello'));
              },
            );
          },
          child: Text('Dialog Show'),
        ),
      ),
    );
  }
}
