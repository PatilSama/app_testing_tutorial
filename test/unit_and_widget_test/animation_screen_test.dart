import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertestproject/some_screen/animation_screen.dart';

void main() {
  testWidgets('Animation Screen Test', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: AnimationScreen()));

    // Find Container
    final containerFinder = find.byType(Container);

    expect(containerFinder, findsOneWidget);

    // Get Container widget
    var container = tester.widget<Container>(containerFinder);

    // Initial state
    final finalSize = tester.getSize(containerFinder);
    expect(finalSize.width, 50);
    expect(finalSize.height, 50);

    var decoration = container.decoration as BoxDecoration;

    expect(decoration.color, Colors.blue);
    expect(decoration.borderRadius, BorderRadius.circular(10));

    // Wait until animation completes
    await tester.pumpAndSettle();

    // Get updated Container
    container = tester.widget<Container>(containerFinder);

    // Final state
    // Check final rendered size
    final finalSize2 = tester.getSize(containerFinder);
    expect(finalSize2.width, 200);
    expect(finalSize2.height, 200);

    var finalDecoration = container.decoration as BoxDecoration;

    expect(finalDecoration.color, Colors.green);
    expect(finalDecoration.borderRadius, BorderRadius.circular(50));
  });
}
