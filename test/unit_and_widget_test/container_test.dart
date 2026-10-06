import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertestproject/gpt_test/container_test.dart';

void main() {
  testWidgets("Container Test", (tester) async {
    await tester.pumpWidget(const MaterialApp(home: ContainerTest()));
    final cont = tester.widget<Container>(find.byType(Container));
    var decor = cont.decoration as BoxDecoration;
    expect(decor.color, Colors.grey);
    expect(decor.borderRadius, BorderRadius.circular(10));
    final border = decor.border as Border;
    expect(border.top.color, Colors.red);
    final finalSize = tester.getSize(find.byKey(const Key('contSize')));
    expect(finalSize.width, 200);
    expect(finalSize.height, 200);
  });
}
