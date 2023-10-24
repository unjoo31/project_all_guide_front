import 'package:flutter/material.dart';

import '../../../../_core/constants/colors.dart';
import '../../../../_core/constants/size.dart';
import '../../../../_core/constants/theme.dart';
import '../../../../_core/utils/validator_util.dart';
import '../../components/custom_auth_text_form_field.dart';
import '../../components/custom_elavated_button.dart';
import '../../components/custom_elavated_icon_button.dart';

class LoginForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _username = TextEditingController();
  final _password = TextEditingController();

  LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "로그인",
            style: textTheme().displayMedium,
          ),
          SizedBox(
            height: gap_medium,
          ),
          CustomAuthTextFormField(
            text: "이메일 주소를 입력해 주세요",
            obscureText: false,
            funValidator: validateUsername(),
            controller: _username,
          ),
          const SizedBox(height: gap_medium),
          CustomAuthTextFormField(
            text: "비밀번호를 입력해 주세요",
            obscureText: true,
            funValidator: validatePassword(),
            controller: _password,
          ),
          const SizedBox(height: gap_large),
          CustomElevatedButton(
            text: "로그인",
            funPageRoute: () {
              if (_formKey.currentState!.validate()) {}
            },
          ),
          const SizedBox(height: gap_large),
          CustomElevatedIconButton(
            text: "구글로 시작하기",
            imgUrl: "google.png",
            textColor: kPrimaryColor,
            press: () {
              // Navigator.pushNamed(context, Move.loginPage);
            },
          ),
          const SizedBox(height: gap_large),
          CustomElevatedIconButton(
            text: "카카오로 시작하기",
            imgUrl: "KakaoTalk.png",
            textColor: kKakaoColor,
            press: () {
              // Navigator.pushNamed(context, Move.loginPage);
            },
          ),
        ],
      ),
    );
  }
}
