import 'package:flutter/material.dart';
import 'package:project_all_guide_front/ui/pages/on_boarding/widgets/on_boarding_item.dart';

import '../components/box_color_button.dart';
import '../components/box_no_color_button.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/guide_background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          child: ListView(
            children: [
              SizedBox(
                height: 200,
              ),
              SizedBox(
                height: 320,
                width: 200,
                child: OnBoardingItem(),
              ),
              SizedBox(
                height: 50,
              ),
              BoxColorButton(
                text: "회원가입",
                press: () {},
              ),
              SizedBox(
                height: 10,
              ),
              BoxNoColorButton(
                text: "로그인",
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
