import 'package:consultation_app/routes_manager.dart';

import 'package:consultation_app/view/OfficialOrganization.dart';
import 'package:consultation_app/view/home.dart';
import 'package:consultation_app/view/inProgress.dart';
import 'package:consultation_app/view/splash.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'view/foregin.dart';
import 'view/Login_Signup.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: GoogleFonts.tajawal().fontFamily,
          primarySwatch: Colors.blue,
        ),
        home: inProgress()

        /*foreign(),*/
        // onGenerateRoute: RouteGenerator.getRoute,
        // initialRoute: Routes.splashRoute,
        );
  }
}
