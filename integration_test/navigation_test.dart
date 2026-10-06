

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertestproject/integration_app_test/one_page.dart';
import 'package:integration_test/integration_test.dart';
import 'package:fluttertestproject/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  app.main();
  testWidgets('Navigation test', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: OnePage()));
    final btnNext = find.byKey(const Key('onePage'));
    expect(btnNext, findsOneWidget);
    await Future.delayed(Duration(seconds: 2));
    await tester.tap(btnNext);
    await tester.pumpAndSettle();
    await Future.delayed(Duration(seconds: 2));
    final secondPageText = find.byKey(const Key('secondPage'));
    expect(secondPageText, findsOneWidget);
    var textData = tester.widget<Text>(secondPageText);
    expect(textData.data, 'Navigate Success.');
    await Future.delayed(Duration(seconds: 2));
  });
}
