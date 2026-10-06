import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertestproject/model/user.dart';
import 'package:fluttertestproject/some_screen/user_repository.dart';
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
        // Arrange
        when(
          () => mockHTTPClient.get(
            Uri.parse('https://jsonplaceholder.typicode.com/users'),
          ),
        ).thenAnswer((_) async {
          return Response('''
              [
                {
                  "id": 1,
                  "name": "samadhan",
                  "username": "patil",
                  "email": "sama111patil@gmail.com",
                  "website": "hildegard.org"
                }
              ]
              ''', 200);
        });

        // Act
        final users = await userRepository.getUser();

        // Assert
        expect(users, isA<List<User>>());
        expect(users.length, 1);
        expect(users.first.name, 'samadhan');
        // expect(users.first.username, 'patil');
        expect(users.first.email, 'sama111patil@gmail.com');
      });

      test('get Exception', () async {
        // Arrange
        when(
          () => mockHTTPClient.get(
            Uri.parse('https://jsonplaceholder.typicode.com/users'),
          ),
        ).thenAnswer((_) async {
          return Response('{}', 500);
        });

        // Act + Assert
        expect(() => userRepository.getUser(), throwsException);
      });
    });
  });
}
