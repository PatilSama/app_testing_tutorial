import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertestproject/model/user.dart';
import 'package:fluttertestproject/user_repository.dart';
import 'package:http/http.dart';
import 'package:mocktail/mocktail.dart';

class MockHTTPClient extends Mock implements Client {}

void main() {
  late UserRepository userRepository;
  late MockHTTPClient mockHTTPClient;
  setUp(() {
    mockHTTPClient = MockHTTPClient();
    userRepository = UserRepository(mockHTTPClient);
  });
  group('User Repository - ', () {
    group('Get User Function - ', () {
      test('get function status code 200', () async {
        // Arrange.
        when(
          () => mockHTTPClient.get(
            Uri.parse('https://jsonplaceholder.typicode.com/users/1'),
          ),
        ).thenAnswer((invocation) async {
          return Response(
            '''{"id":1,"name":"samadhan","username":"patil","email":"sama111patil@gmail.com","webside":"hildegard.org"}''',
            200
          );
        });
        // Act
        final user = await userRepository.getUser();
        // Assert
        expect(user, isA<User>());
        expect(user.name, 'samadhan');
        print("User Name = ${user.name}");
      });

      test('get Exception', ()async {
        when(
          () => mockHTTPClient.get(
            Uri.parse('https://jsonplaceholder.typicode.com/users/1'),
          ),
        ).thenAnswer((invocation) async {
          return Response('{}', 500);
        });
        // Act
        final user = userRepository.getUser();
        // assert
        expect(user, throwsException);
      });
    });
  });
}
