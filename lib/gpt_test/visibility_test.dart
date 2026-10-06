import 'package:flutter/material.dart';

class VisibilityTest extends StatefulWidget {
  const VisibilityTest({super.key});

  @override
  State<VisibilityTest> createState() => _VisibilityTestState();
}

class _VisibilityTestState extends State<VisibilityTest> {
  bool visib = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Visibility(visible: visib, child: Text('samadhan')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            visib = !visib;
          });
        },
        key: const Key('visibility'),
      ),
    );
  }
}
