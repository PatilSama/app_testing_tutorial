import 'package:flutter/material.dart';

class TextFieldAndButton extends StatefulWidget {
  const TextFieldAndButton({super.key});

  @override
  State<TextFieldAndButton> createState() => _TextFieldAndButtonState();
}

class _TextFieldAndButtonState extends State<TextFieldAndButton> {
  TextEditingController emailController = TextEditingController();

  String emailText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            controller: emailController,
            key: Key('emailField'),
            keyboardType: TextInputType.emailAddress,
          ),
          Text(emailText, key: const Key('emailtxt')),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            emailText = emailController.text;
          });
        },
        key: const Key('emailButton'),
      ),
    );
  }
}
