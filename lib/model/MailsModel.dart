import 'package:consultation_app/model/MailModel.dart';

class MailsModel {
  MailsModel({
    required this.mails,
  });
  late final Mails mails;

  MailsModel.fromJson(Map<String, dynamic> json) {
    mails = Mails.fromJson(json['mails']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['mails'] = mails.toJson();
    return _data;
  }
}

class Mails {
  Mails({
    required this.currentPage,
    required this.mails,
    required this.firstPageUrl,
    required this.from,
    required this.lastPage,
    required this.lastPageUrl,
    required this.links,
    required this.nextPageUrl,
    required this.path,
    required this.perPage,
    this.prevPageUrl,
    required this.to,
    required this.total,
  });
  late final int currentPage;
  late final List<MailModel> mails;
  late final String firstPageUrl;
  late final int from;
  late final int lastPage;
  late final String lastPageUrl;
  late final List<Links> links;
  late final String nextPageUrl;
  late final String path;
  late final int perPage;
  late final String? prevPageUrl;
  late final int to;
  late final int total;

  Mails.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    // for (var mail in json['data']) {
    //   mail.add(MailModel.fromJson(mail));
    // }
    mails = List.from(json['data']).map((e) => MailModel.fromJson(e)).toList();
    firstPageUrl = json['first_page_url'];
    from = json['from'];
    lastPage = json['last_page'];
    lastPageUrl = json['last_page_url'];
    links = List.from(json['links']).map((e) => Links.fromJson(e)).toList();
    nextPageUrl = json['next_page_url'];
    path = json['path'];
    perPage = json['per_page'];
    prevPageUrl = null;
    to = json['to'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['current_page'] = currentPage;
    _data['data'] = mails.map((e) => e.toJson()).toList();
    _data['first_page_url'] = firstPageUrl;
    _data['from'] = from;
    _data['last_page'] = lastPage;
    _data['last_page_url'] = lastPageUrl;
    _data['links'] = links.map((e) => e.toJson()).toList();
    _data['next_page_url'] = nextPageUrl;
    _data['path'] = path;
    _data['per_page'] = perPage;
    _data['prev_page_url'] = prevPageUrl;
    _data['to'] = to;
    _data['total'] = total;
    return _data;
  }
}

class Category {
  Category({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });
  late final int id;
  late final String name;
  late final String createdAt;
  late final String updatedAt;

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    return _data;
  }
}

class Tags {
  Tags({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
    required this.pivot,
  });
  late final int id;
  late final String name;
  late final String createdAt;
  late final String updatedAt;
  late final Pivot pivot;

  Tags.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    pivot = Pivot.fromJson(json['pivot']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['pivot'] = pivot.toJson();
    return _data;
  }
}

class Pivot {
  Pivot({
    required this.mailId,
    required this.tagId,
  });
  late final String mailId;
  late final String tagId;

  Pivot.fromJson(Map<String, dynamic> json) {
    mailId = json['mail_id'];
    tagId = json['tag_id'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['mail_id'] = mailId;
    _data['tag_id'] = tagId;
    return _data;
  }
}

class Links {
  Links({
    this.url,
    required this.label,
    required this.active,
  });
  late final String? url;
  late final String label;
  late final bool active;

  Links.fromJson(Map<String, dynamic> json) {
    url = null;
    label = json['label'];
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['url'] = url;
    _data['label'] = label;
    _data['active'] = active;
    return _data;
  }
}
