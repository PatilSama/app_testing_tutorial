import 'package:flutter/material.dart';

class ListviewTest extends StatefulWidget {
  const ListviewTest({super.key});

  @override
  State<ListviewTest> createState() => _ListviewTestState();
}

class _ListviewTestState extends State<ListviewTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            key: Key('key$index'),
            title: Text('Item $index'),
            onTap: () {},
          );
        },
      ),
    );
  }
}
