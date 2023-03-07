import 'dart:convert';
import 'package:consultation_app/constant/const_Api.dart';
import 'package:consultation_app/model/userModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Auth extends ChangeNotifier {
  Autogenerated? token;
  User? user;
  Role? role;
  Map errorMessage = {};

  Future<bool> login(String _email, String _password) async {
    http.Response response = await http.post(Uri.parse(loginUrl), body: {
      'email': _email,
      'password': _password,
    });
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      user = User.fromJson(body['user']);
      token = Autogenerated.fromJson(body);
      role = Role.fromJson(body['user']['role']);
      notifyListeners();

      return true;
    } else {
      var body = jsonDecode(response.body);
      errorMessage = body;
      notifyListeners();
      return false;
    }
  }

  Future register(String email, String password, String username) async {
    http.Response response = await http.post(Uri.parse(registerUrl), body: {
      'password_confirmation': password,
      'email': email,
      'password': password,
      'name': username
    });
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      user = User.fromJson(body['user']);
      token = Autogenerated.fromJson(body);
      role = Role.fromJson(body['user']['role']);
      notifyListeners();
      return true;
    } else {
      var body = jsonDecode(response.body);
      errorMessage = body;
      notifyListeners();
      return false;
    }
    //   if (response.statusCode == 200) {
    //     var body = jsonDecode(response.body);
    //     User user = User.fromJson(body['user']);
    //     print('register email : ${user.email} , name : ${user.name}');
    //  }
  }

  Future getUser() async {
    http.Response response = await http.get(Uri.parse(userInfoUrl),
        headers: {'Authorization': 'Bearer ${token!.token!}'});
    print('user from token : ${response.body}');
  }

//review 500 Internal Server Error

  Future updateUser() async {
    http.Response response = await http.post(Uri.parse(updateUserUrl),
        headers: {'Authorization': 'Bearer ${token!.token!}'},
        body: {'name': 'Felfel'});
    print('response from update :${response.body},');
  }

  Future logout() async {
    http.Response response = await http.post(Uri.parse(logoutUrl),
        headers: {'Authorization': 'Bearer ${token!.token!}'});
    print(response.body);
  }

  Future getAllUsers() async {
    http.Response response = await http.get(Uri.parse(allUsersUrl),
        headers: {'Authorization': 'Bearer ${token!.token!}'});
    print(response.body);
  }
//review 500 Internal Server Error

  Future createUser() async {
    http.Response response = await http.post(Uri.parse(allUsersUrl), headers: {
      'Authorization': 'Bearer ${token!.token!}'
    }, body: {
      'name': 'Som3a',
      'email': 'som3a@gmail.com',
      'password': '123456'
    });
    print(response.body);
  }

  Future getUserId() async {
    http.Response response = await http.get(Uri.parse(getUserIdUrl(10)),
        headers: {'Authorization': 'Bearer ${token!.token!}'});
    print(response.body);
  }

  Future deleteUser() async {
    http.Response response = await http.delete(
        Uri.parse(deleteUserUrl(user!.id!)),
        headers: {'Authorization': 'Bearer ${token!.token!}'});
    print(response.body);
  }

//review 200 In PostMan 302 In VSCode
  Future changePassword() async {
    http.Response response = await http.put(
        Uri.parse(changePasswordUrl(user!.id!)),
        headers: {'Authorization': 'Bearer ${token!.token!}'},
        body: {'password': '12345678'});
    print('change password ${response.statusCode} and ||| ${response.body}');
    if (response.statusCode == 200) {
      print(response.body);
    }
  }

  Future changeRole() async {
    http.Response response = await http.put(Uri.parse(changeRoleUrl(user!.id!)),
        headers: {'Authorization': 'Bearer ${token!.token!}'},
        body: {'role_id': '2'});
    print('role from : ${response.body}');
  }

  Future getMails() async {
    http.Response response = await http.get(Uri.parse(getMailsUrl),
        headers: {'Authorization': 'Bearer ${token!.token!}'});
    print('get mails : ${response.body}');
  }
}
