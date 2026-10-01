import 'package:flutter/material.dart';
import 'package:fluttertestproject/integration_app_test/button_click.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testWidgets('Button Performance', (tester)async{
    await tester.pumpWidget(const MaterialApp(home: ButtonClick(),));
    expect(find.byKey(const Key('buttonClick')), findsOneWidget);
    expect(find.text('Click Me'), findsOneWidget);
    await tester.tap(find.byKey(const Key('buttonClick')));
    await Future.delayed(Duration(seconds: 2));
    await tester.pump();
    await Future.delayed(Duration(seconds: 2));
    expect(find.text('Button Clicked.'), findsOneWidget);
  });
}