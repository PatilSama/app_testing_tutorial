import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertestproject/some_screen/counter.dart';

void main() {
  late Counter counter;
  setUp(() {
    counter = Counter();
    if (kDebugMode) {
      print("SetUpAll Execute only one");
    }
  });
  group("Counter Class -", () {
    // arrange

    test(
      'Given counter class when it is instantiated then value of counter should be 0',
      () {
        final val = counter.count;
        expect(val, 0);
        if (kDebugMode) {
          print('set 0');
        }
      },
    );

    test(
      'Given counter class when it is incremented then the value of count should be 1',
      () {
        // act
        counter.counterIncrement();

        final val = counter.count;
        // assert
        expect(val, 1);
        if (kDebugMode) {
          print('set 1');
        }
      },
    );

    test('decrement counter -', () {
      counter.decrementCounter();
      final val = counter.count;
      expect(val, -1);
      if (kDebugMode) {
        print('decrement');
      }
    });

    test('Counter class reset -', () {
      counter.reset();
      expect(counter.count, 0);
      if (kDebugMode) {
        print('reset 0');
      }
    });
  });
}
