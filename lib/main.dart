import 'package:consultation_app/providers/language_provider.dart';
import 'package:consultation_app/sharedPrefernces/shared_pref_controller.dart';

import 'package:consultation_app/routes_manager.dart';

import 'package:consultation_app/view/OfficialOrganization.dart';
import 'package:consultation_app/view/home.dart';

import 'package:consultation_app/view/inProgress.dart';

import 'package:consultation_app/view/onboarding.dart';

import 'package:consultation_app/view/splash.dart';
import 'package:consultation_app/view/testScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

import 'view/foregin.dart';

import 'components/foregin.dart';

import 'view/Login_Signup.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // this line to force app to run awaits statements(in our case sharedPreferences) before run runApp function
  await SharedPrefController().initSharedPreferences();
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
    return MultiProvider(providers: [
      ChangeNotifierProvider<LanguageProvider>(
          create: (context) => LanguageProvider())
    ], child: MyMaterialApp());
  }
}

class MyMaterialApp extends StatelessWidget {
  const MyMaterialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: GoogleFonts.tajawal().fontFamily,
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(Provider.of<LanguageProvider>(context).language),
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
    );
  }
}
