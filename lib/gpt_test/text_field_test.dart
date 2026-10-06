import 'package:flutter/material.dart';

class TextFieldTest extends StatefulWidget {
  const TextFieldTest({super.key});

  @override
  State<TextFieldTest> createState() => _TextFieldTestState();
}

class _TextFieldTestState extends State<TextFieldTest> {
  String message = '';
  TextEditingController txtMessage = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(key: const Key('emailField'), controller: txtMessage),
          SizedBox(height: 10),
          Text(message, key: const Key('displayedEmail')),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        key: const Key('login'),
        child: Text('BTN Login'),
        onPressed: () {
          setState(() {
            message = txtMessage.text;
          });
        },
      ),
    );
  }
}
