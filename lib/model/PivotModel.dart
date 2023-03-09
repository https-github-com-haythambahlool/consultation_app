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
