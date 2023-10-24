import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../_core/constants/size.dart';
import '../../../../_core/constants/theme.dart';
import '../../../../_core/utils/validator_util.dart';
import '../../../../data/dto/user_request.dart';
import '../../../../data/store/session_store.dart';
import '../../components/agree_check.dart';
import '../../components/custom_auth_text_form_field.dart';
import '../../components/custom_elavated_button.dart';

class JoinForm extends ConsumerWidget {
  final _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _password = TextEditingController();

  JoinForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Form(
      key: _formKey,
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
            funValidator: validateEmail(),
            controller: _email,
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
              if (_formKey.currentState!.validate()) {
                JoinReqDTO joinReqDTO =
                    JoinReqDTO(password: _password.text, email: _email.text);
                ref.read(sessionProvider).join(joinReqDTO);
              }
            },
          ),
        ],
      ),
    );
  }
}
