import 'package:flutter/material.dart';

import '../../components/custom_text_color_button.dart';

class MyListInformation extends StatelessWidget {
  final String userImg;
  final String userName;
  final String userEmail;
  final VoidCallback? onDetailPressed;

  const MyListInformation({
    required this.userImg,
    required this.userName,
    required this.userEmail,
    this.onDetailPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 400,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          child: Image.asset("assets/${userImg}"),
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 25),
                            Text(
                              "${userName}",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "${userEmail}",
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ),
                    CustomTextColorButton(
                      "변경하기   ",
                      () {
                        Navigator.pushNamed(context, 'myinformationform');
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
