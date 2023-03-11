import 'dart:convert';
import 'package:consultation_app/model/MailModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../constant/const_Api.dart';
import '../model/TagsModel.dart';

class TagsApi extends ChangeNotifier {
  TagModel? tagModel;
  List<TagModel> allTags = [];
  bool isLoading = true;

  MailModel mailModel = MailModel();
  List<MailModel> mailsForTag = [];
  Future getAlltags(token) async {
    http.Response response = await http.get(
      Uri.parse(getAlltagsUrl),
      headers: {'Authorization': 'Bearer ${token}'},
    );
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      for (var tag in body['tags']) {
        tagModel = TagModel.fromJson(tag);
        allTags.add(tagModel!);
      }
      isLoading = false;
      notifyListeners();
      return allTags;
    } else {
      return 'error!!';
    }
  }

  Future getAlltagsWithMail(token, tags) async {
    http.Response response = await http.get(
      Uri.parse(getAlltagsWithMailUrl(tags)),
      headers: {'Authorization': 'Bearer ${token}'},
    );
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      for (var tag in body['tags']) {
        for (var mail in tag['mails']) {
          mailModel = MailModel.fromJson(mail);
          mailsForTag.add(mailModel);
        }
      }
      return mailsForTag;
    } else {
      return 'error!!';
    }
  }

  Future getAlltagsOfMail(token, idMail) async {
    http.Response response = await http.get(
        Uri.parse(getAlltagsWithIdUrl(idMail)),
        headers: {'Authorization': 'Bearer ${token}'});
    print(response.body);
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      for (var tag in body['tags']) {
        tagModel = TagModel.fromJson(tag);
        allTags.add(tagModel!);
      }
      return allTags;
    } else {
      return 'error!!';
    }
  }

  Future createtags(token, name) async {
    http.Response response = await http.post(Uri.parse(createtagsUrl),
        headers: {'Authorization': 'Bearer ${token}'}, body: {'name': name});
    print(response.body);
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}
