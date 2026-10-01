import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/user.dart';

class UserRepository {
  final http.Client client;

  UserRepository(this.client);

  Future<List<User>> getUser() async {
    final response = await client.get(
      Uri.parse('https://jsonplaceholder.typicode.com/users'),
    );

    if (response.statusCode == 200) {
      final List<Map<String, dynamic>> json = jsonDecode(response.body);

      return json.map((json) => User.fromJson(json)).toList();
    }

    throw Exception('Some error occurred.');
  }
}
