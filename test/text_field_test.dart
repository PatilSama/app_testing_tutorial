import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertestproject/gpt_test/text_field_test.dart';

void main() {
  group('text field test', () {
    testWidgets('Email TextField Test', (tester) async {
      await tester.pumpWidget(const MaterialApp(home: TextFieldTest()));
      await tester.enterText(
        find.byKey(const Key('emailField')),
        'sama111patil@gmail.com',
      );
      expect(find.text('sama111patil@gmail.com'), findsOneWidget);
      expect(find.text('sama11patil@gmail.com'), findsNothing);
    });

    testWidgets('should display entered email after login', (tester) async {
      await tester.pumpWidget(const MaterialApp(home: TextFieldTest()));
      await tester.enterText(
        find.byKey(const Key('emailField')),
        'sama111patil@gmail.com',
      );
      // expect(find.text('sama111patil@gmail.com'), findsOneWidget);

      await tester.tap(find.byKey(const Key('login')));
      await tester.pump();
      // Check email displayed after login
      expect(find.byKey(const Key('displayedEmail')), findsOneWidget);
      final textCheck = tester.widget<Text>(
        find.byKey(const Key('displayedEmail')),
      );
      // Also verify the displayed value
      expect(textCheck.data, 'sama111patil@gmail.com');
    });
  });
}
