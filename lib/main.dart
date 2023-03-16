import 'package:consultation_app/model/MailsModel.dart';
import 'package:consultation_app/model_view/CategoriesApi.dart';
import 'package:consultation_app/model_view/MailsApi.dart';
import 'package:consultation_app/model_view/SenderApi.dart';
import 'package:consultation_app/model_view/StatusApi.dart';
import 'package:consultation_app/model_view/TagsApi.dart';
import 'package:consultation_app/providers/language_provider.dart';
import 'package:consultation_app/sharedPrefernces/shared_pref_controller.dart';
import 'package:consultation_app/routes_manager.dart';
import 'package:consultation_app/view/NewInbox.dart';
import 'package:consultation_app/view/home.dart';
import 'package:consultation_app/view/LoginSignup.dart';
import 'package:consultation_app/view/splash.dart';
import 'package:consultation_app/view/testScreen.dart';
import 'package:consultation_app/view/testShimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'model_view/AuthApi.dart';

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
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider<Auth>(
        create: (BuildContext context) => Auth(),
      ),
      ChangeNotifierProvider<CategoriesApi>(
        create: (BuildContext context) => CategoriesApi(),
      ),
      ChangeNotifierProvider<MailsApi>(
        create: (BuildContext context) => MailsApi(),
      ),
      ChangeNotifierProvider<SenderApi>(
        create: (BuildContext context) => SenderApi(),
      ),
      ChangeNotifierProvider<StatusApi>(
        create: (BuildContext context) => StatusApi(),
      ),
      ChangeNotifierProvider<TagsApi>(
        create: (BuildContext context) => TagsApi(),
      ),
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
        primarySwatch: Colors.purple,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(Provider.of<LanguageProvider>(context).language),
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      // home: const LoginSignup(),
    );
  }
}
