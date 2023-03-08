import 'dart:convert';

import 'package:consultation_app/components/homeScreen/Tags.dart';

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
    sender = Sender.fromJson(json['sender']);
    status = Status.fromJson(json['status']);
    // tags = List.castFrom<dynamic, int>(json['tags']);
    attachments = List.castFrom<dynamic, dynamic>(json['attachments']);
    activities = List.from(json['activities'])
        .map((e) => Activities.fromJson(e))
        .toList();
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

class Sender {
  Sender({
    required this.id,
    required this.name,
    required this.categoryId,
  });
  late final int id;
  late final String name;
  late final String categoryId;

  Sender.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    categoryId = json['category_id'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['category_id'] = categoryId;
    return _data;
  }
}

class Status {
  Status({
    required this.id,
    required this.name,
    required this.color,
  });
  late final int id;
  late final String name;
  late final String color;

  Status.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['color'] = color;
    return _data;
  }
}

class Activities {
  Activities({
    this.id,
    this.body,
    this.userId,
    this.mailId,
    this.sendNumber,
    this.sendDate,
    this.sendDestination,
    this.createdAt,
    this.updatedAt,
  });
  int? id;
  String? body;
  int? userId;
  int? mailId;
  String? sendNumber;
  String? sendDate;
  String? sendDestination;
  String? createdAt;
  String? updatedAt;

  Activities.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    body = json['body'];
    userId = json['user_id'];
    mailId = json['mail_id'];
    sendNumber = null;
    sendDate = null;
    sendDestination = null;
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['body'] = body;
    _data['user_id'] = userId;
    _data['mail_id'] = mailId;
    _data['send_number'] = sendNumber;
    _data['send_date'] = sendDate;
    _data['send_destination'] = sendDestination;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    return _data;
  }
}
