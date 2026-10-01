import 'package:flutter/material.dart';
import 'package:fluttertestproject/integration_app_test/second_page.dart';

class OnePage extends StatelessWidget {
  const OnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          key: const Key('onePage'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => SecondPage()),
            );
          },
          child: Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}
