import 'dart:async';

import 'package:flutter/material.dart';

class AppService with ChangeNotifier {
  bool _isInitialized = false;

  bool get isIntialized => _isInitialized;

  Future<void> onAppStart() async {
    _isInitialized = true;
    notifyListeners();
  }
}
