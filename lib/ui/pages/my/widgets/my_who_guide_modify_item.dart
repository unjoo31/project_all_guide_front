import 'package:flutter/material.dart';

import '../../../../_core/constants/colors.dart';
import '../../../../_core/utils/validator_util.dart';
import '../../components/custom_write_long_text_form_field.dart';
import '../../components/custom_write_text_form_field.dart';

class MyWhoGuideModifyItem extends StatelessWidget {
  final String userImg;
  final String userName;
  final String title;
  final String content;
  final String picUrlFirst;
  final String? picUrlSecond;
  final String? picUrlThird;

  final _formKey = GlobalKey<FormState>();
  final _title = TextEditingController();
  final _content = TextEditingController();

  MyWhoGuideModifyItem({
    required this.userImg,
    required this.userName,
    required this.title,
    required this.content,
    required this.picUrlFirst,
    this.picUrlSecond,
    this.picUrlThird,
  });

  Widget _buildImage(String imagePath) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Image.asset(
          imagePath,
          width: 300,
          height: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      width: 400,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            width: 350,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20.0),
                  bottom: Radius.circular(20.0),
                ),
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 16, top: 20, right: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                child: Image.asset("assets/$userImg"),
                              ),
                              SizedBox(width: 15),
                              Text(
                                "$userName",
                                style: TextStyle(fontSize: 17),
                                textAlign: TextAlign.center,
                              ),
                              Spacer(),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "제목",
                            style: TextStyle(
                                fontSize: 14,
                                color: kFontBlack,
                                fontWeight: FontWeight.bold),
                          ),
                          CustomWriteTextFormField(
                            text: "${title}",
                            obscureText: false,
                            funValidator: validateTitle(),
                            controller: _title,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 16),
                      child: SizedBox(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            _buildImage("assets/$picUrlFirst"),
                            if (picUrlSecond != null)
                              _buildImage("assets/$picUrlSecond"),
                            if (picUrlThird != null)
                              _buildImage("assets/$picUrlThird"),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 16, top: 20, right: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "상세내용",
                            style: TextStyle(
                                fontSize: 14,
                                color: kFontBlack,
                                fontWeight: FontWeight.bold),
                          ),
                          CustomWriteLognTextField(
                            text: "${content}",
                            obscureText: false,
                            funValidator: validateContent(),
                            controller: _content,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
