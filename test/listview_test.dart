import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertestproject/gpt_test/listview_test.dart';

void main() {
  testWidgets('ListView test', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: ListviewTest()));

    for (int i = 0; i < 10; i++) {
      await tester.tap(find.byKey(Key('key$i')));

      expect(find.text('Item $i'), findsOneWidget);

    }
  });
}
