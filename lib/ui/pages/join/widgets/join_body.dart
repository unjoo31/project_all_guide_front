import 'package:flutter/material.dart';
import 'package:project_all_guide_front/ui/pages/join/widgets/join_form.dart';

import '../../../../_core/constants/move.dart';
import '../../components/custom_logo.dart';
import '../../components/custom_text_button.dart';

class JoinBody extends StatelessWidget {
  const JoinBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: ListView(
        children: [
          const SizedBox(height: 20),
          const CustomLogo(),
          const SizedBox(height: 60),
          JoinForm(),
          const SizedBox(height: 20),
          CustomTextButton(
            "로그인 페이지로 이동",
            () {
              Navigator.pushNamed(context, Move.loginPage);
            },
          ),
        ],
      ),
    );
  }
}
