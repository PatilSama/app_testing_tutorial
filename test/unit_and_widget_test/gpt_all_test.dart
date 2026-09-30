import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertestproject/gpt_test/gpt_test.dart';

void main() {
  testWidgets('Description test', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: GptTest()));

    final test = find.text('Samadhan');
    expect(test, findsOneWidget);

    final onTab = find.text('text change');
    await tester.tap(onTab);
    await tester.pump();
    final test2 = find.text('Mayuri');
    expect(test2, findsOneWidget);

  });
}
