// import 'dart:convert';

// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:task_manager/data/model/user_model.dart';

// class AuthController {
//   static String? accessToken;
//   static userModel? userData;

//   static Future saveUserData(userModel model, String token) async {
//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

//     await sharedPreferences.setString('token', token);
//     await sharedPreferences.setString('user-data', jsonEncode(model.toJson()));
//   }
// }

import 'package:task_manager/data/model/user_model.dart';

class AuthController {
  static String? accessToken;
  static userModel? userData;
  
}
