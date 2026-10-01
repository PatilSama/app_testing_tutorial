import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertestproject/integration_app_test/text_field_and_button.dart';
import 'package:integration_test/integration_test.dart';

void main(){
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testWidgets('TextField and Button', (tester)async{
    await tester.pumpWidget(const MaterialApp(home: TextFieldAndButton(),));
final email = 'sama111patil@gmail.com';
    final filed = find.byKey(const Key('emailField'));
    expect(filed, findsOneWidget);
    final btn = find.byKey(const Key('emailButton'));
    expect(find.byType(Text), findsNothing);
    expect(btn, findsOneWidget);
    await tester.enterText(filed, email);
    await Future.delayed(Duration(seconds: 2));
    await tester.tap(btn);
    await tester.pump();
    expect(find.text(email), findsOneWidget);
    expect(find.byType(Text), findsOneWidget);
    await Future.delayed(Duration(seconds: 2));
  });
}