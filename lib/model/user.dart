import 'package:flutter/foundation.dart';

class User {
  final String email;
  final String name;
  final int id;
  final String website;

  User({
    required this.email,
    required this.name,
    required this.id,
    required this.website,
  });

  Map<String, dynamic> toMap() {
    return {"email": email, "name": name, "id": id, "website": website};
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      email: json['email'] ?? '',
      name: json['name'] ?? '',
      id: json['id']?.toInt() ?? 0,
      website: json['website'] ?? '',
    );
  }
}
