import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertestproject/gpt_test/widget_tree.dart';

void main() {
  testWidgets('Widget Tree Test', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: WidgetTree()));
    expect(
      find.descendant(of: find.byType(Card), matching: find.text('Samadhan')),
      findsOneWidget,
    );
    expect(
      find.ancestor(of: find.text('Samadhan'), matching: find.byType(Card)),
      findsOneWidget,
    );
  });
}
