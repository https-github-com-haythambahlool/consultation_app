import 'package:consultation_app/model/MailModel.dart';
import 'CategoryModel.dart';

class SenderModel {
  int? id;
  String? name;
  String? mobile;
  String? address;
  String? categoryId;
  String? createdAt;
  String? updatedAt;
  String? mailsCount;
  Category? category;
  List<MailModel> mails = [];

  SenderModel({
    this.id,
    this.name,
    this.mobile,
    this.address,
    this.categoryId,
    this.createdAt,
    this.updatedAt,
    this.mailsCount,
    this.category,
  });

  SenderModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    mobile = json['mobile'];
    address = json['address'];
    categoryId = json['category_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    mailsCount = json['mails_count'];
    category =
        json['category'] != null ? Category.fromJson(json['category']) : null;
    mails = json['mails'] != null
        ? mails = json['mails'].forEach((mail) {
            mails.add(MailModel.fromJson(mail));
          })
        : [];
    // if (json['mails'] != null) {
    //   mails = List<MailModel>;
    //   json['mails'].forEach((v) {
    //     mails.add(new Null.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['mobile'] = this.mobile;
    data['address'] = this.address;
    data['category_id'] = this.categoryId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['mails_count'] = this.mailsCount;
    if (this.category != null) {
      data['category'] = this.category!.toJson();
    }
    if (this.mails != null) {
      data['mails'] = this.mails.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
