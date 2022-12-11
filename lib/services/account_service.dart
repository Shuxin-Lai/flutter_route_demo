import 'dart:async';

import 'package:flutter/material.dart';

class AccountService with ChangeNotifier {
  bool _isLogin = false;

  bool get isLogin => _isLogin;

  Future<void> login() async {
    await Future.delayed(const Duration(seconds: 2));
    _isLogin = true;
    notifyListeners();
  }

  Future<void> logout() async {
    _isLogin = false;
    notifyListeners();
  }
}
