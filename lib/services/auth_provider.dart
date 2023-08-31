
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';

// class AuthProvider with ChangeNotifier {
//   bool _isLoggedIn = false;

//   bool get isLoggedIn => _isLoggedIn;

//   void login() {
//     _isLoggedIn = true;
//     notifyListeners();
//   }

//   void logout() {
//     _isLoggedIn = false;
//     notifyListeners();
//   }
// }

import 'package:provider/provider.dart';



class LoggedIn {
final isLoggedInProvider = Provider<bool>(create: (ref) => false);


}