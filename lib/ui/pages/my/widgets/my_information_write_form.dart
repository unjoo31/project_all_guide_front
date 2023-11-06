import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_all_guide_front/ui/pages/my/widgets/region_form.dart';

import '../../../../_core/constants/colors.dart';
import '../../../../_core/constants/size.dart';
import '../../../../_core/utils/validator_util.dart';
import 'calender_form.dart';
import 'custom_information_form_field.dart';

class MyInformationWriteForm extends ConsumerWidget {
  final _formKey = GlobalKey<FormState>();
  final _userName = TextEditingController();
  final _userEmail = TextEditingController();
  final _passward = TextEditingController();
  final _phonenumber = TextEditingController();
  final String userImg;

  MyInformationWriteForm({required this.userImg, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: gap_medium,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                child: Image.asset("assets/${userImg}"),
              ),
            ],
          ),
          SizedBox(
            height: gap_medium,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "이름",
                  style: TextStyle(
                      fontSize: 14,
                      color: kFontBlack,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Spacer(),
              CustomInformationFormField(
                text: "이름을 입력하세요.",
                obscureText: false,
                funValidator: validateUsername(),
                controller: _userName,
              ),
            ],
          ),
          Divider(
            thickness: 1,
            color: kGreyColor,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "이메일",
                  style: TextStyle(
                      fontSize: 14,
                      color: kFontBlack,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Spacer(),
              CustomInformationFormField(
                text: "이메일을 입력하세요.",
                obscureText: false,
                funValidator: validateUsername(),
                controller: _userEmail,
              ),
            ],
          ),
          Divider(
            thickness: 1,
            color: kGreyColor,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "비밀번호",
                  style: TextStyle(
                      fontSize: 14,
                      color: kFontBlack,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Spacer(),
              CustomInformationFormField(
                text: " **********",
                obscureText: false,
                funValidator: validatePassword(),
                controller: _passward,
              ),
            ],
          ),
          Divider(
            thickness: 1,
            color: kGreyColor,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "지역",
                    style: TextStyle(
                        fontSize: 14,
                        color: kFontBlack,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Spacer(),
                RegionForm(),
              ],
            ),
          ),
          Divider(
            thickness: 1,
            color: kGreyColor,
          ),
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 8.0, top: 5.0, bottom: 5.0),
                child: Text(
                  "생년월일",
                  style: TextStyle(
                      fontSize: 14,
                      color: kFontBlack,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Spacer(),
              CalendarForm(),
            ],
          ),
          Divider(
            thickness: 1,
            color: kGreyColor,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "전화번호",
                  style: TextStyle(
                      fontSize: 14,
                      color: kFontBlack,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Spacer(),
              CustomInformationFormField(
                text: "전화번호를 입력하세요.",
                obscureText: false,
                funValidator: validateUsername(),
                controller: _phonenumber,
              ),
            ],
          ),
          Divider(
            thickness: 1,
            color: kGreyColor,
          ),
          const SizedBox(height: gap_medium),
        ],
      ),
    );
  }
}
