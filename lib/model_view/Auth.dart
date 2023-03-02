import 'dart:convert';

import 'package:consultation_app/constant/const_Api.dart';
import 'package:consultation_app/model/userModel.dart';
import 'package:http/http.dart' as http;

class Auth {
  void login(String _email, String _password) async {
    http.Response response = await http.post(Uri.parse(loginUrl), body: {
      'email': _email,
      'password': _password,
    });
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      User user = User.fromJson(body['user']);
      print('email : ${user.email}');
    }
  }
}
