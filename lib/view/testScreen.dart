import 'package:consultation_app/model/ActivitiesModel.dart';
import 'package:consultation_app/model/MailModel.dart';
import 'package:consultation_app/model_view/AuthApi.dart';
import 'package:consultation_app/model_view/MailsApi.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class test extends StatelessWidget {
  test({super.key});
  Auth auth = Auth();
  MailsApi mail = MailsApi();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              auth.login('o@o.com', '123456').then(
                (value) {
                  auth.getAllUsers();
                },
              );
            },
            child: Text('test test')),
      ),
    );
  }
}
