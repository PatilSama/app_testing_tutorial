import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertestproject/model/user_model.dart';

void main() {
  group('Test User Model', () {
    test('FromJson should create UserModel from map', () {
      // Arrange.
      final data = {'id': 1, 'name': 'samadhan'};
      // Act.
      final user = UserModel.fromJson(data);
      // Assert.
      expect(user, isA<UserModel>());
      expect(user.id, 1);
      expect(user.name, 'samadhan');
    });
    // Test for toJson function.
    test('toJson should convert UserModel to Map', () {
      // Arrange
      final user = UserModel(id: 1, name: 'Samadhan');
      // Act
      final data = user.toJson();
      // Assert
      expect(data, isA<Map<String, dynamic>>());
      expect(data['id'], 1);
      expect(data['name'], 'Samadhan');
    });

    test('copyWith should create new userModel with updated value', () {
      const user = UserModel(id: 1, name: 'samadhan');
      final updateUser = user.copyWith(2, 'prajwal');
      expect(updateUser.id, 2);
      expect(updateUser.name, 'prajwal');
    });
    test('copyWith should keep old value when null is pass', () {
      const user = UserModel(id: 1, name: 'samadhan');
      final updateUser = user.copyWith(null, null);
      expect(updateUser.id, 1);
      expect(updateUser.name, 'samadhan');
    });
    test('copyWith should keep one oldvalue when one value is pass', () {
      const user = UserModel(id: 1, name: 'samadhan');
      final updateUser = user.copyWith(2, null);
      expect(updateUser.id, 2);
      expect(updateUser.name, 'samadhan');
    });
    test('copyWith should update only name', () {
      // Arrange
      const user = UserModel(id: 1, name: 'Samadhan');

      // Act
      final updatedUser = user.copyWith(null, 'Rahul');

      // Assert
      expect(updatedUser.id, 1);
      expect(updatedUser.name, 'Rahul');
    });
  });
}
