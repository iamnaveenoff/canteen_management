import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../config/config.dart';
import '../model/login_model.dart';
import '../model/signup_model.dart';

Future<http.Response?> register(SignupModel data) async {
  http.Response? response;
  try {
    response = await http.post(Uri.parse(Config.signUpAPI),
        headers: {
          HttpHeaders.contentTypeHeader: "application/json",
        },
        body: jsonEncode(data.toJson()));
  } catch (e) {
    log(e.toString());
  }
  return response;
}

Future<http.Response?> login(LoginModel data) async {
  http.Response? response;
  try {
    response = await http.post(Uri.parse(Config.loginAPI),
        headers: {
          HttpHeaders.contentTypeHeader: "application/json",
        },
        body: jsonEncode(data.toJson()));
  } catch (e) {
    log(e.toString());
  }
  return response;
}