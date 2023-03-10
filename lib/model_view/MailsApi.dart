import 'dart:convert';
import 'package:consultation_app/model/userModel.dart';
import 'package:consultation_app/model_view/AuthApi.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../constant/const_Api.dart';
import '../model/MailModel.dart';
import '../model/MailsModel.dart';

class MailsApi extends ChangeNotifier {
  MailModel? mail;
  MailsModel? allMails;
  Auth auth = Auth();

  Future getMails(String token) async {
    print('get mails');
    http.Response response = await http.get(Uri.parse(getMailsUrl),
        headers: {'Authorization': 'Bearer ${token}'});
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      allMails = MailsModel.fromJson(body);
      return 'Success Get All Mails';
    } else {
      return 'error!!';
    }
  }

  Future getSingleMail(int id, String token) async {
    http.Response response = await http.get(Uri.parse(getSingleMailUrl(id)),
        headers: {'Authorization': "Bearer ${token}"});

    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      mail = MailModel.fromJson(body['mail'][0]);
      return 'Success get the mail';
    } else {
      return 'error!!';
    }
  }

  Future createMail({
    required String token,
    subject,
    description,
    decision,
    finalDecision,
    senderId,
    archiveNumber,
    statusId,
    tags,
    activities,
  }) async {
    http.Response response = await http.post(
      Uri.parse(createMailUrl),
      headers: {'Authorization': 'Bearer ${token}'},
      body: {
        'subject': subject.toString(),
        'description': description.toString(),
        'decision': decision.toString(),
        'final_decision': finalDecision.toString(),
        'sender_id': senderId.toString(),
        'archive_number': archiveNumber.toString(),
        'archive_date': DateTime.now().toString(),
        'status_id': statusId.toString(),
        'tags': jsonEncode(tags),
        'activities': jsonEncode([
          {'body': activities![0]['body'], 'user_id': activities![0]['userId']},
          {'body': activities![1]['body'], 'user_id': activities![1]['userId']}
        ])
      },
    );

    if (response.statusCode == 200) {
      dynamic body = jsonDecode(response.body);
      mail = MailModel.fromJson(body['mail']);
      return 'Success : ${mail!.subject}';
    } else {
      return 'error';
    }
  }

  Future updateMail(User user, String token) async {
    http.Response response =
        await http.put(Uri.parse(updateMailUrl(user.id!)), headers: {
      'Authorization': 'Bearer ${token}'
    }, body: {
      'status_id': '1',
      'tags': jsonEncode([2, 3]),
      'activities': jsonEncode(
        [
          {"body": "any text", "user_id": 1},
          {"body": "any text2", "user_id": 1}
        ],
      ),
      'decision': 'new decisi',
      'final_decision': 'jdasjd',
      'idAttachmentsForDelete': jsonEncode([]),
      'pathAttachmentsForDelete': jsonEncode([])
    });
    print(
        'status code : ${response.statusCode} , ||||| body : ${response.body}');
  }

  Future deleteMail({required String token, required int mailId}) async {
    http.Response response = await http.delete(Uri.parse(deleteMailUrl(mailId)),
        headers: {'Authorization': 'Bearer ${token}'});
    if (response.statusCode == 200) {
      print('delete ${response.body}');
    }
  }
}
