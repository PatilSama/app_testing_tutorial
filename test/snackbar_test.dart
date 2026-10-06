import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertestproject/gpt_test/snackbar_test.dart';

void main() {
  testWidgets('Show SnackBar', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: SnackbarTest()));
    expect(find.byKey(const Key('snack')), findsOneWidget);
    await tester.tap(find.byKey(const Key('snack')));
    await tester.pump();
    expect(find.text('Samadhan'), findsOneWidget);
  });
}
