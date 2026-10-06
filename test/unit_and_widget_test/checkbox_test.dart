import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertestproject/gpt_test/checkbox_test.dart';

void main() {
  testWidgets('Check CheckBox', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: CheckboxTest()));

    final box = find.byType(Checkbox);
    expect(tester.widget<Checkbox>(box).value, false);
    await tester.tap(box);
    await tester.pump();
    expect(tester.widget<Checkbox>(find.byType(Checkbox)).value, true);
  });
}
