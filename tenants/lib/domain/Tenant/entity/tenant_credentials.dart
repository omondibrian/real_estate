import 'dart:convert';

import 'package:flutter/foundation.dart';

class TenantCredentials {
  final String _email;
  final String _password;
  const TenantCredentials(this._email, this._password);

  String toJson() {
    final emailValue = getEmail;
    final password = getPassword;

    if (kDebugMode) {
      print(emailValue);
      print(password);
    }
    return json.encode({
      "email": emailValue,
      "password": password,
    });
  }

  Map<String, String> toMap() {
    return {
      "email": getEmail,
      "password": getPassword,
    };
  }

  String get getEmail {
    return _email;
  }

  String get getPassword {
    return _password;
  }

  ///checks if the props have valid format
  // bool isCredentialsValid() => _email.isValid() && _password.isValid();
}
