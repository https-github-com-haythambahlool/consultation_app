import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:consultation_app/view/Login_Signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splash_view/source/presentation/pages/pages.dart';
import 'package:splash_view/source/presentation/presentation.dart';

import '../constant/const.dart';
import '../routes_manager.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  Timer? _timer;

  _startDelay(){
    _timer = Timer(const Duration(seconds: 2), _goNext);
  }

  _goNext(){
    Navigator.pushReplacementNamed(context, Routes.homeRoute);
  }

  @override
  void initState(){
    super.initState();
    _startDelay();
  }

  @override
  Widget build(BuildContext context) {
    Size mysize = MediaQuery.of(context).size;
    return SplashView(
      done: Done(LoginSignup()),
      duration: Duration(seconds: 2),
      showStatusBar: true,
      title: AnimatedTextKit(
        animatedTexts: [
          TyperAnimatedText(
            'ديوان رئيس الوزراء',
            textStyle: GoogleFonts.arefRuqaa(
              color: Colors.white,
              fontSize: 25,
            ),
          )
        ],
      ),
      logo: Image.asset(
        'assets/images/palestine.png',
        width: 75,
      ),
      gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: [
            kprimColor,
            ksecColor,
          ]),
    );
  }
}
