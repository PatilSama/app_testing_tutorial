import 'package:flutter/material.dart';
import 'package:fluttertestproject/gpt_test/switch_test.dart';

class NavigationTest extends StatelessWidget {
  const NavigationTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          key: const Key('goNext'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => SwitchTest()),
            );
          },
          child: const Text('Go Home'),
        ),
      ),
    );
  }
}
