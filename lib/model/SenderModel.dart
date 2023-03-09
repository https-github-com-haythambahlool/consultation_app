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
