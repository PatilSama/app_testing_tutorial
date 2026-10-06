import 'package:flutter/material.dart';

class ContainerTest extends StatefulWidget {
  const ContainerTest({super.key});

  @override
  State<ContainerTest> createState() => _ContainerTestState();
}

class _ContainerTestState extends State<ContainerTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          key: const Key('contSize'),
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
            border: BoxBorder.all(color: Colors.red, width: 5),
          ),
        ),
      ),
    );
  }
}
