import 'package:consultation_app/model_view/Auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class test extends StatelessWidget {
  test({super.key});
  Auth auth = Auth();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              auth.login('o@o.com', '123456').then((value) {
                auth.createMail();
              });
            },
            child: Text('test test')),
      ),
    );
  }
}
