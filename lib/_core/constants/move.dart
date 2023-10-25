import 'package:flutter/material.dart';
import 'package:project_all_guide_front/ui/pages/all_guide/all_guide_page.dart';
import 'package:project_all_guide_front/ui/pages/join/join_page.dart';
import 'package:project_all_guide_front/ui/pages/login/login_page.dart';
import 'package:project_all_guide_front/ui/pages/main_screens.dart';
import 'package:project_all_guide_front/ui/pages/my/my_page.dart';
import 'package:project_all_guide_front/ui/pages/on_boarding/on_boarding_page.dart';
import 'package:project_all_guide_front/ui/pages/splash/splash_page.dart';
import 'package:project_all_guide_front/ui/pages/where_guide/where_guide_page.dart';
import 'package:project_all_guide_front/ui/pages/who_guide/who_guide_page.dart';

class Move {
  static String splashPage = "/splash";
  static String onBoardingPage = "/onBoarding";
  static String loginPage = "/login";
  static String joinPage = "/join";
  static String mainPage = "/main";
  static String homePage = "/home";
  static String myPage = "/my";
  static String allGuidePage = "/allGuide";
  static String whereGuidePage = "/whereGuide";
  static String whoGuidePage = "/whoGuide";
}

Map<String, Widget Function(BuildContext)> getRouters() {
  return {
    Move.splashPage: (context) => const SplashPage(),
    Move.onBoardingPage: (context) => const OnBoardingPage(),
    Move.loginPage: (context) => const LoginPage(),
    Move.joinPage: (context) => const JoinPage(),
    Move.mainPage: (context) => const MainScreens(),
    //Move.homePage: (context) => HomePage(),
    Move.myPage: (context) => const MyPage(),
    Move.allGuidePage: (context) => const AllGuidePage(),
    Move.whereGuidePage: (context) => const WhereGuidePage(),
    Move.whoGuidePage: (context) => const WhoGuidePage(),
  };
}
