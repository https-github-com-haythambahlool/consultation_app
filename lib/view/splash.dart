import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:consultation_app/view/Login_Signup.dart';
import 'package:consultation_app/view/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../constant/const.dart';
import '../routes_manager.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  Timer? _timer;

  // _startDelay() {
  //   _timer = Timer(const Duration(seconds: 2), _goNext);
  // }

  // _goNext() {
  //   Navigator.pushReplacementNamed(context, Routes.homeRoute);
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   _startDelay();
  // }

  @override
  Widget build(BuildContext context) {
    Size mysize = MediaQuery.of(context).size;
    return newSplash();
  }
}

class newSplash extends StatelessWidget {
  newSplash({super.key});
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'assets/images/logo.gif',
      nextScreen: onBoarding(),
      backgroundColor: kprimColor,
      splashIconSize: 400,
      curve: Curves.elasticInOut,
      pageTransitionType: PageTransitionType.rightToLeft,
      splashTransition: SplashTransition.slideTransition,
      duration: 1000,
    );
  }
}

// class oldSplash extends StatelessWidget {
//   const oldSplash({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SplashView(
//       done: Done(onBoarding(),
//           curve: Curves.elasticInOut, animationDuration: Duration(seconds: 5)),
//       duration: Duration(seconds: 5),
//       showStatusBar: true,
//       title: AnimatedTextKit(
//         animatedTexts: [
//           TyperAnimatedText(
//             'ديوان رئيس الوزراء',
//             textStyle: GoogleFonts.arefRuqaa(
//               color: Colors.white,
//               fontSize: 25,
//             ),
//           )
//         ],
//       ),
//       logo: Image.asset(
//         'assets/images/logo.gif',
//         width: 400,
//       ),
//       gradient: LinearGradient(
//           begin: Alignment.centerRight,
//           end: Alignment.centerLeft,
//           colors: [kthrColor, kthrColor]),
//     );
//   }
// }
