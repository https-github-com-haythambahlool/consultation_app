import 'package:flutter/material.dart';

import '../../constant/const.dart';
import '../../view/home.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AuthBtn extends StatelessWidget {
  const AuthBtn({
    super.key,
    required this.isLogin,
  });

  final bool isLogin;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) {
          return Home();
        }));
      },
      child: Container(
        alignment: Alignment.center,
        width: 250,
        height: 42,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [
                  kprimColor,
                  ksecColor,
                ])),
        child: Text(
          isLogin
              ? AppLocalizations.of(context)!.signUp
              : AppLocalizations.of(context)!.login,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
