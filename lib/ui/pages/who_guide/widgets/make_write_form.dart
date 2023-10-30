import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../_core/constants/colors.dart';
import '../../../../_core/constants/size.dart';
import '../../../../_core/utils/validator_util.dart';
import '../../components/custom_write_long_text_form_field.dart';
import '../../components/custom_write_text_form_field.dart';

class MakeWriteForm extends ConsumerWidget {
  final _formKey = GlobalKey<FormState>();
  final _title = TextEditingController();
  final _content = TextEditingController();

  MakeWriteForm({Key? key}) : super(key: key);

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
          Text(
            "제목",
            style: TextStyle(
                fontSize: 14, color: kFontBlack, fontWeight: FontWeight.bold),
          ),
          CustomWriteTextFormField(
            text: "제목을 입력하세요.",
            obscureText: false,
            funValidator: validateTitle(),
            controller: _title,
          ),
          const SizedBox(height: gap_medium),
          Text(
            "상세내용",
            style: TextStyle(
                fontSize: 14, color: kFontBlack, fontWeight: FontWeight.bold),
          ),
          CustomWriteLognTextField(
            text: "상세내용을 입력하세요.",
            obscureText: false,
            funValidator: validateContent(),
            controller: _content,
          ),
          const SizedBox(height: gap_xlarge),
        ],
      ),
    );
  }
}
