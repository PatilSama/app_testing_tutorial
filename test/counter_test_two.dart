import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertestproject/counter_two.dart';


void main() {
  late CounterTwo main;
  setUp(() {
    main = CounterTwo();
  });

  group('2 case run in group', () {
    test('value need to be increment', () {
      // Arrange
      // Act
      main.increment();
      // Assert
      expect(main.value, 1);
    });

    test('Value needs to be decremented', () {
      main.decrement();
      expect(main.value, -1);
    });
  });

  test("increment by 2", () {
    main.incrementValue2();
    expect(main.value, 2);
  });
}
