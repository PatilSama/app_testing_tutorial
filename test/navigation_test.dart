import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertestproject/gpt_test/navigation_test.dart';

void main() {
  testWidgets('Navigation Test', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: NavigationTest()));

    expect(find.byKey(const Key('goNext')), findsOneWidget);
    await tester.tap(find.byKey(const Key('goNext')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('switchBack')), findsOneWidget);
  });
}
