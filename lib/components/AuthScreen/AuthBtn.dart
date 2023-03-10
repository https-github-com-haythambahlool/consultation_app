import 'package:flutter/material.dart';
import '../../constant/const.dart';
import '../../view/home.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AuthBtn extends StatelessWidget {
  AuthBtn({super.key, required this.isLogin, required this.onTap});

  final bool isLogin;
  Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: 250,
        height: 42,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            gradient: const LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [
                  kprimColor,
                  ksecColor,
                ])),
        child: Text(
          isLogin
              ? AppLocalizations.of(context)!.login
              : AppLocalizations.of(context)!.signUp,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
