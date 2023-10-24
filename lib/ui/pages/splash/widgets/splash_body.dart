import 'package:flutter/material.dart';

import '../../../../_core/constants/colors.dart';
import '../../on_boarding/on_boarding_page.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackWhite,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 5,
              child: Center(
                child: Image.asset("assets/splash_image.png"),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: TextButton(
                  child: Text(
                    "Version 1.0",
                    style: TextStyle(color: kPrimaryColor),
                  ),
                  onPressed: () {
                    _completeSplash(context, OnBoardingPage());
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _completeSplash(BuildContext context, Widget widget) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (BuildContext context) => widget));
  }
}
