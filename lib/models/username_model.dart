import 'package:flutter/material.dart';

class UsernameModel extends ChangeNotifier {
  String _username = '';
  String get username => _username;

  void updateUsername(String newUsername) {
    _username = newUsername;
    notifyListeners();
  }
}
