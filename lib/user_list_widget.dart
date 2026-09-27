import 'package:flutter/material.dart';
import 'package:fluttertestproject/user_repository.dart';
import 'package:http/http.dart';

import 'model/user.dart';

class UserListWidget extends StatefulWidget {
  final Future<List<User>> futureUsers;
  const UserListWidget({super.key,required this.futureUsers});

  @override
  State<UserListWidget> createState() => _UserListWidgetState();
}

class _UserListWidgetState extends State<UserListWidget> {

  // final UserRepository userRepository = UserRepository(Client());
  // late Future<List<User>> futureUsers;
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   futureUsers = userRepository.getUser();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Users')),
      body: FutureBuilder<List<User>>(
        future: widget.futureUsers,
        builder: (context, snap) {
          if (snap.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snap.hasError) {
            return Center(child: Text('Something went wrong...'));
          } else if (snap.hasData) {
            final List<User> users = snap.data!;
            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return ListTile(
                  title: Text(user.name),
                  subtitle: Text(user.email),
                );
              },
            );
          }
          return Container();
        },
      ),
    );
  }
}
