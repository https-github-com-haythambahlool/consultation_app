import 'dart:convert';
import 'dart:ffi';
import 'dart:math';

import 'package:consultation_app/model/CategoryModel.dart';
import 'package:consultation_app/model/SenderModel.dart';
import 'package:http/http.dart' as http;

import '../constant/const_Api.dart';

class SenderApi {
  SenderModel? sender;
  List<SenderModel> allSenders = [];
  Future getAllSenders(token, bool withMails) async {
    http.Response response = await http.get(
      Uri.parse(getAllSenderUrl(withMails)),
      headers: {'Authorization': 'Bearer ${token}'},
    );
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      for (var send in body['senders']) {
        sender = SenderModel.fromJson(send);
        allSenders.add(sender!);
      }
      return allSenders;
    } else {
      return 'error!!';
    }
  }

  Future getSingleSender(token, bool withMails, userId) async {
    http.Response response = await http.get(
      Uri.parse(getSingleSenderUrl(id: userId, value: withMails)),
      headers: {'Authorization': 'Bearer ${token}'},
    );
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);

      sender = SenderModel.fromJson(body);

      return sender;
    } else {
      return 'error!!';
    }
  }

  Future createSenders(
      {required String token,
      required String name,
      String? address,
      String? mobile,
      required String CategoryId}) async {
    http.Response response =
        await http.post(Uri.parse(createSenderUsrl), headers: {
      'Authorization': 'Bearer ${token}'
    }, body: {
      'name': name,
      'mobile': mobile,
      'category_id': CategoryId,
      'address': address ?? '',
    });
    if (response.statusCode == 200) {
      return true;
    } else {
      'mbile number uniqe';
      return false;
    }
  }

//  no
  Future updateSenders(token, userId) async {
    http.Response response =
        await http.put(Uri.parse(updateSendersUrl(userId)), headers: {
      'Authorization': 'Bearer ${token!.token!}'
    }, body: {
      "name": "osama ahmed",
    });
    print(response.body);
  }

  Future deleteSenders(token, userId) async {
    http.Response response = await http.delete(
        Uri.parse(deleteSenderUrl(userId)),
        headers: {'Authorization': 'Bearer ${token}'});
    if (response.statusCode == 200) {
      print('success');
      return true;
    } else {
      return false;
    }
  }
}
