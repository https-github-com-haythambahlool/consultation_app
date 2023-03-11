import 'dart:io';

import 'package:consultation_app/constant/const_Api.dart';
import 'package:http/http.dart' as http;

// class AttachmentModel {

//   Future<int> uploadImage(filePath, mailId, token) async {
//     var request = http.MultipartRequest("POST", Uri.parse(attachmentsUrl));
// //create multipart using filepath, string or bytes
//     var pic = await http.MultipartFile.fromPath('image', filePath);
//     request.fields['mail_id'] = mailId.toString();
//     request.fields['title'] = 'image_${DateTime.now()}';
// //add multipart to request
//     request.files.add(pic);
//     request.headers.addAll(
//         {'Accept': 'application/json', 'Authorization': 'Bearer $token'});
//     var response = await request.send();

// //Get the response from the server
//     var responseData = await response.stream.toBytes();
//     var responseString = String.fromCharCodes(responseData);
//     print(responseString);
//     return response.statusCode;
//   }
// }

class AttachmentModel {
  int? id;
  String? title;
  String? image;
  String? mailId;
  String? createdAt;
  String? updatedAt;

  AttachmentModel(
      {this.id,
      this.title,
      this.image,
      this.mailId,
      this.createdAt,
      this.updatedAt});

  AttachmentModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    image = json['image'];
    mailId = json['mail_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['image'] = this.image;
    data['mail_id'] = this.mailId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
