import 'package:consultation_app/view/Login_Signup.dart';
import 'package:consultation_app/view/NewInbox.dart';
import 'package:consultation_app/view/OfficialOrganization.dart';
import 'package:consultation_app/view/category_screen.dart';
import 'package:consultation_app/view/home.dart';
import 'package:consultation_app/view/search.dart';
import 'package:consultation_app/view/search_filters.dart';
import 'package:consultation_app/view/search_sender.dart';
import 'package:consultation_app/view/splash.dart';
import 'package:consultation_app/view/statuses_screen.dart';
import 'package:consultation_app/view/tags_screen.dart';
import 'package:flutter/material.dart';


class Routes{

  static const String categoryRoute = "/categoryScreen";
  static const String detailsRoute = "/detailsScreen";
  static const String tagRoute = "/tagScreen";
  static const String statusRoute = "/statusRoute";
  static const String splashRoute = "/splash";
  static const String authRoute = "/authScreen";
  static const String searchRoute = "/search";
  static const String searchSenderRoute = "/searchSender";
  static const String filterScreenRoute = "/filterScreen";
  static const String newInBoxRoute = "/newInBoxScreen";
  static const String homeRoute = "/home";

}

class RouteGenerator{
  static Route<dynamic> getRoute(RouteSettings settings){
    switch(settings.name){
      case Routes.authRoute:
        return MaterialPageRoute(builder: (_) => const LoginSignup());
      case Routes.detailsRoute:
        return MaterialPageRoute(builder: (_) => const OfficialOrganization());
      case Routes.categoryRoute:
        return MaterialPageRoute(builder: (_) => const CategoryScreen());
      case Routes.tagRoute:
        return MaterialPageRoute(builder: (_) => const TagsScreen());
      case Routes.statusRoute:
        return MaterialPageRoute(builder: (_) => const StatusScreen());
      case Routes.searchSenderRoute:
        return MaterialPageRoute(builder: (_) => const SearchSenderScreen());
      case Routes.searchRoute:
        return MaterialPageRoute(builder: (_) => const SearchScreen());
      case Routes.filterScreenRoute:
        return MaterialPageRoute(builder: (_) => const FilterScreen());
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const Splash());
      case Routes.newInBoxRoute:
        return MaterialPageRoute(builder: (_) => const NewInbox());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const Home());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute(){
    return MaterialPageRoute(builder: (_)=>
        Scaffold(
          appBar: AppBar
            (title: const Text('No Route Found'),
          ),
          body: const Center(
              child: Text('No Route Found'),
          ),
        ));
  }
}