import 'dart:convert';

import 'SenderModel.dart';

CategoryModel categoryModelFromJson(String str) =>
    CategoryModel.fromJson(json.decode(str));

String categoryModelToJson(CategoryModel data) => json.encode(data.toJson());

class CategoryModel {
  CategoryModel({
    required this.category,
  });

  List<Category> category;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        category: List<Category>.from(
            json["category"].map((x) => Category.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "category": List<dynamic>.from(category.map((x) => x.toJson())),
      };
}

class Category {
  Category({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
    required this.sendersCount,
    required this.senders,
  });

  int? id;
  String? name;
  String? createdAt;
  String? updatedAt;
  String? sendersCount;
  List<SenderModel>? senders;

  Category.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    print('hello');
    createdAt = json["created_at"] ?? '';
    updatedAt = json["updated_at"] ?? '';

    sendersCount = json["senders_count"];
    senders = json["senders"] != null && json["senders"] != []
        ? List<SenderModel>.from(
            json["senders"].map((x) => SenderModel.fromJson(x)))
        : null;
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "senders_count": sendersCount,
        "senders": List<dynamic>.from(senders!.map((x) => x.toJson())),
      };
}
