import 'package:flutter/material.dart';

import '../../../../_core/constants/size.dart';
import '../../../../_core/constants/theme.dart';
import '../../../../_core/utils/validator_util.dart';
import '../../components/agree_check.dart';
import '../../components/custom_auth_text_form_field.dart';
import '../../components/custom_elavated_button.dart';

class JoinForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _username = TextEditingController();
  final _password = TextEditingController();

  JoinForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "회원가입",
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
          const SizedBox(height: gap_xlarge),
          AgreeCheck(
            text: "이용약관 동의",
          ),
          const SizedBox(height: gap_medium),
          AgreeCheck(
            text: "개인정보 취급방침 동의",
          ),
          const SizedBox(height: gap_xlarge),
          CustomElevatedButton(
            text: "회원가입",
            funPageRoute: () {
              if (_formKey.currentState!.validate()) {}
            },
          ),
        ],
      ),
    );
  }
}
