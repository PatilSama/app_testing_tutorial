import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertestproject/gpt_test/visibility_test.dart';

void main() {
  testWidgets('Visibility Test', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: VisibilityTest()));
    expect(find.text('samadhan'), findsNothing);
    await tester.tap(find.byKey(const Key('visibility')));
    await tester.pump();
    expect(find.text('samadhan'), findsOneWidget);
  });
}
