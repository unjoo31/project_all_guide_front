import 'package:flutter/material.dart';
import 'package:project_all_guide_front/ui/pages/join/join_page.dart';
import 'package:project_all_guide_front/ui/pages/login/login_page.dart';
import 'package:project_all_guide_front/ui/pages/on_boarding/on_boarding_page.dart';
import 'package:project_all_guide_front/ui/pages/splash/splash_page.dart';

class Move {
  static String splashPage = "/splash";
  static String onBoardingPage = "/onBoarding";
  static String loginPage = "/login";
  static String joinPage = "/join";
}

Map<String, Widget Function(BuildContext)> getRouters() {
  return {
    Move.splashPage: (context) => const SplashPage(),
    Move.onBoardingPage: (context) => const OnBoardingPage(),
    Move.loginPage: (context) => const LoginPage(),
    Move.joinPage: (context) => const JoinPage(),
  };
}
