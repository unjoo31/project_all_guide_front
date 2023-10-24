import 'package:flutter/material.dart';

import '../../../../_core/constants/move.dart';
import '../../components/custom_logo.dart';
import '../../components/custom_text_button.dart';
import 'login_form.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: ListView(
        children: [
          const SizedBox(height: 20),
          const CustomLogo(),
          const SizedBox(height: 60),
          LoginForm(),
          const SizedBox(height: 20),
          CustomTextButton(
            "회원가입 페이지로 이동",
            () {
              Navigator.pushNamed(context, Move.joinPage);
            },
          ),
        ],
      ),
    );
  }
}
