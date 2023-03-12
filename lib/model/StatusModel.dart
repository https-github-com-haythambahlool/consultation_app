import 'package:consultation_app/model/MailModel.dart';
import 'package:consultation_app/model/MailsModel.dart';

class Status {
  Status({this.id, this.name, this.color});
  int? id;
  String? name;
  String? color;
  List<MailModel> mails = [];
  String? mailsCount;

  Status.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    color = json['color'];
    if (json['mails'] != null && json['mails'] == []) {
      for (var mail in json['mails']) {
        var mailmodel = MailModel.fromJson(mail);

        mails.add(mailmodel);
      }
    }
    mailsCount = json['mails_count'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['color'] = color;
    return _data;
  }
}
