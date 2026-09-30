import 'package:flutter/material.dart';

class SnackbarTest extends StatelessWidget {
  const SnackbarTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          key: const Key('snack'),
          onPressed: () {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(const SnackBar(content: Text('Samadhan')));
          },
          child: Text('Show Snack'),
        ),
      ),
    );
  }
}
