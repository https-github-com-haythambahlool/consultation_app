import 'dart:convert';

import 'package:consultation_app/model/StatusModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../constant/const_Api.dart';

class StatusApi extends ChangeNotifier {
  Status statusModel = Status();
  List<Status> allStatus = [];
  bool isLoading = true;

  Future getAllStatus(token, bool withMail) async {
    http.Response response = await http.get(
      Uri.parse(getAllStutassUrl(withMail)),
      headers: {'Authorization': 'Bearer ${token}'},
    );
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);

      for (var status in body['statuses']) {
        statusModel = Status.fromJson(status);
        allStatus.add(statusModel);
      }
      isLoading = false;
      notifyListeners();
      return allStatus;
    } else {
      return 'error!!';
    }
  }

  Future getSingleStatus(token, statusId, bool withMail) async {
    http.Response response = await http.get(
      Uri.parse(getSingleStatusUrl(statusId: statusId, value: withMail)),
      headers: {'Authorization': 'Bearer ${token}'},
    );
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      statusModel = Status.fromJson(body);
      return statusModel;
    } else {
      return 'error!!';
    }
  }
}
