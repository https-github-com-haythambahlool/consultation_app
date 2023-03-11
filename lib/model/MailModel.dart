import 'dart:convert';

import 'package:consultation_app/components/homeScreen/Tags.dart';
import 'package:consultation_app/model/AttachmentApi.dart';

import 'ActivitiesModel.dart';
import 'SenderModel.dart';
import 'StatusModel.dart';

class MailModel {
  MailModel({
    this.id,
    this.subject,
    this.description,
    this.senderId,
    this.archiveNumber,
    this.archiveDate,
    this.decision,
    this.statusId,
    this.finalDecision,
    this.createdAt,
    this.updatedAt,
    this.activitiesCount,
    this.sender,
    this.status,
    this.tags,
    this.attachments,
    this.activities,
  });
  int? id;
  String? subject;
  String? description;
  String? senderId;
  String? archiveNumber;
  String? archiveDate;
  String? decision;
  String? statusId;
  String? finalDecision;
  String? createdAt;
  String? updatedAt;
  String? activitiesCount;
  SenderModel? sender;
  Status? status;
  List<int>? tags;
  List<AttachmentModel>? attachments;
  List<Activity>? activities;

  MailModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    subject = json['subject'];
    description = json['description'];
    senderId = json['sender_id'];
    archiveNumber = json['archive_number'];
    archiveDate = json['archive_date'];
    decision = json['decision'];
    statusId = json['status_id'];
    finalDecision = json['final_decision'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    activitiesCount = json['activities_count'];

    sender =
        json['sender'] != null ? SenderModel.fromJson(json['sender']) : null;
    status = json['status'] != null ? Status.fromJson(json['status']) : null;

    tags = json['tags'] != null && json['tags'] != []
        ? List.castFrom<dynamic, int>(json['tags'])
        : [];
    attachments = json['attachments'] != null && json['attachments'] != []
        ? List.from(json['attachments'])
            .map((e) => AttachmentModel.fromJson(e))
            .toList()
        : [];
    activities = json['activities'] != null && json['activities'] != []
        ? List.from(json['activities'])
            .map((e) => Activity.fromJson(e))
            .toList()
        : [];
  }
  Map<String, dynamic> body = {
    'subject': 'subject',
    'description': '',
    'decision': '',
    'final_decision': '',
    'sender_id': '1',
    'archive_number': '1252',
    'archive_date': DateTime.now().toString(),
    'status_id': '1',
    'tags': jsonEncode([1, 2]),
    'activities': jsonEncode([
      {'body': 'any text', 'user_id': 1},
      {'body': 'any text2', 'user_id': 1}
    ]),
  };
  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['subject'] = subject ?? '';
    _data['description'] = description ?? '';
    _data['sender_id'] = senderId ?? '';
    _data['archive_number'] = archiveNumber ?? '';
    _data['archive_date'] = DateTime.now().toString();
    _data['decision'] = decision ?? '';
    _data['status_id'] = statusId ?? '';
    _data['final_decision'] = finalDecision ?? '';
    _data['tags'] = jsonEncode(tags);
    _data['activities'] = jsonEncode([
      {'body': 'any text', 'user_id': 1},
      {'body': 'any text2', 'user_id': 1}
    ]);
    // jsonEncode(activities!.map((e) => e.toJson()).toList());
    return _data;
  }
}
