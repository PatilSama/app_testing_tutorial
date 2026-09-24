import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertestproject/my_app.dart';

void main() {
  testWidgets(
    'given counter is 0 when increment button is clicked then counter should be 1',
    (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: MyHomePage(title: 'Widget Test')),
      );
      final ctr = find.text('0');
      expect(ctr, findsOneWidget);

      final ctr2 = find.text('1');
      expect(ctr2, findsNothing);

      final incrementButton = find.byType(FloatingActionButton);
      await tester.tap(incrementButton);

      await tester.pump();
      final ctr3 = find.text('1');
      expect(ctr3, findsOneWidget);
      final ctr4 = find.text('0');
      expect(ctr4, findsNothing);
    },
  );
}
