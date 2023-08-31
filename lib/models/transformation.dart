import 'package:flutter/material.dart';



class User extends ChangeNotifier {
  bool isLoggedIn = false;

  void login() {
    
    isLoggedIn = true;
    notifyListeners();
  }

  void logout() {
    isLoggedIn = false;
    notifyListeners();
  }
}