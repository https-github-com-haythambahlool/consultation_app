import 'dart:convert';

import 'package:consultation_app/components/homeScreen/Tags.dart';

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
  Sender? sender;
  Status? status;
  List<int>? tags;
  List<dynamic>? attachments;
  List<Activities>? activities;

  MailModel.fromJson(Map<String, dynamic> json) {
    print('from json $json');
    id = json['id'];
    subject = json['subject'];
    description = json['description'];
    senderId = json['sender_id'];
    archiveNumber = json['archive_number'];
    archiveDate = json['archive_date'];
    decision = json['decision'];
    statusId = json['status_id'];
    finalDecision = null;
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    activitiesCount = json['activities_count'];
    sender = json['sender'] != null ? Sender.fromJson(json['sender']) : null;
    status = json['status'] != null ? Status.fromJson(json['status']) : null;
    tags =
        json['tags'] != null ? List.castFrom<dynamic, int>(json['tags']) : null;
    attachments = json['attachments'] != null
        ? List.castFrom<dynamic, dynamic>(json['attachments'])
        : null;
    activities = json['activities'] != null
        ? List.from(json['activities'])
            .map((e) => Activities.fromJson(e))
            .toList()
        : null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['subject'] = subject;
    _data['description'] = description;
    _data['sender_id'] = senderId;
    _data['archive_number'] = archiveNumber;
    _data['archive_date'] = archiveDate;
    _data['decision'] = decision;
    _data['status_id'] = statusId;
    _data['final_decision'] = finalDecision;
    // _data['tags'] = jsonDecode(tags.toString());
    // _data['activities'] = activities!.map((e) => e.toJson()).toString();
    return _data;
  }
}
