

import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertestproject/email_check.dart';

void main(){

  test("check email id", (){
    // Arrange
    final email = EmailCheck();
    // Act
    bool value = email.checkEmail('sama111patil@gmail.com');
    // Assert
    expect(value, true);
  });

  test('check invalid email id', (){
    // Arrange
    final email = EmailCheck();
    // Act
    bool value = email.checkEmail('sama111gmail.com');
    // Assert
    expect(value, false);
  });
}