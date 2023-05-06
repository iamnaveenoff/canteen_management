import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../model/signup_model.dart';
import '../services/api.dart';

class SignUpProvider extends ChangeNotifier {
  bool loading = false;
  bool isBack = false;
  Future<String> signUpData(SignupModel body) async {
    loading = false;
    notifyListeners();
    http.Response response = (await register(body))!;
    if (response.statusCode == 200) {
      isBack = true;
      return "User registered successfully!";
    }
    loading = false;
    notifyListeners();
    return "User registration Failed!";
  }
}