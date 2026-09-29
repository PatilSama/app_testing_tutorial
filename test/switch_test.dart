import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertestproject/gpt_test/switch_test.dart';

void main(){
  testWidgets('Check Switch', (tester)async{
    await tester.pumpWidget(const MaterialApp(home: SwitchTest(),));
    final switchWidget = find.byType(Switch);
    expect(tester.widget<Switch>(switchWidget).value, false);
    await tester.tap(switchWidget);
    await tester.pump();
    expect(tester.widget<Switch>(switchWidget).value, true);
  });
}