import 'package:flutter/material.dart';

class GptTest extends StatefulWidget {
  const GptTest({super.key});

  @override
  State<GptTest> createState() => _GptTestState();
}

class _GptTestState extends State<GptTest> {
  String name = 'Samadhan';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(name)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            name = 'Mayuri';
          });
        },
        child: Text('text change'),
      ),
    );
  }
}
