import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertestproject/gpt_test/dialog_test.dart';

void main() {
  testWidgets('Dialog Test', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: DialogTest()));
    await tester.tap(find.text('Dialog Show'));
    await tester.pump();
    expect(find.text('Hello'), findsOneWidget);
  });
}
