import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:logger/logger.dart';

import '../../../../_core/constants/colors.dart';
import '../../../../_core/constants/size.dart';
import '../../../../_core/constants/theme.dart';
import '../../../../_core/utils/validator_util.dart';
import '../../../../data/dto/user_request.dart';
import '../../../../data/store/session_store.dart';
import '../../components/custom_auth_text_form_field.dart';
import '../../components/custom_elavated_button.dart';
import '../../components/custom_elavated_icon_button.dart';

class LoginForm extends ConsumerWidget {
  final _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _password = TextEditingController();

  LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Form(
      key: _formKey,
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
          const SizedBox(height: gap_large),
          CustomElevatedButton(
            text: "로그인",
            funPageRoute: () {
              if (_formKey.currentState!.validate()) {
                Logger().d("_email ${_email}");
                LoginReqDTO loginReqDTO =
                    LoginReqDTO(email: _email.text, password: _password.text);
                ref.read(sessionProvider).login(loginReqDTO);
                Logger().d("_password ${_password}");
                Logger().d("loginReqDTO ${loginReqDTO.email}");
              }
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
            press: () async {
              // 카카오톡 실행 가능 여부 확인
              // 카카오톡 실행이 가능하면 카카오톡으로 로그인, 아니면 카카오계정으로 로그인
              if (await isKakaoTalkInstalled()) {
                print("카카오톡이 설치되어 있습니다.");
                await UserApi.instance.loginWithKakaoTalk();
              } else {
                print("카카오톡이 설치되어 있지 않습니다.");
                OAuthToken oauthToken =
                    await UserApi.instance.loginWithKakaoAccount();
                print(oauthToken.accessToken); //accessToken을 스프링 서버에 주면됨
                print(oauthToken.expiresAt);
                print(oauthToken.scopes![0]);
              }
            },
          ),
        ],
      ),
    );
  }
}
