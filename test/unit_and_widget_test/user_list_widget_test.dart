import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertestproject/model/user.dart';
import 'package:fluttertestproject/some_screen/user_list_widget.dart';

void main() {
  testWidgets(
    'Display list of users with title as name and subTitle as email',
    (test) async {
      final List<User> users = [
        User(
          email: 'sama111patil@gmail.com',
          name: 'samadhan',
          id: 1,
          website: 'https://www.samadhan.com',
        ),
        User(
          email: 'samapatil@gmail.com',
          name: 'sama',
          id: 2,
          website: 'https://www.sama.com',
        ),
      ];

      Future<List<User>> mockFetchUser() async {
        return Future.delayed(const Duration(seconds: 2), () => users);
      }

      await test.pumpWidget(
        MaterialApp(home: UserListWidget(futureUsers: mockFetchUser())),
      );
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
      await test.pumpAndSettle();
      expect(find.byType(ListView), findsOneWidget);
      expect(find.byType(ListTile), findsNWidgets(users.length));
      
      for(final user in users){
        expect(find.text(user.name), findsOneWidget);
        expect(find.text(user.email), findsOneWidget);
      }
    },
  );
}
