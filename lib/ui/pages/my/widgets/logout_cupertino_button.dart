import 'package:flutter/material.dart';

import '../../../../_core/constants/colors.dart';
import '../../../../_core/constants/move.dart';

class LogoutCupertinoButton extends StatelessWidget {
  final String? text;
  final GestureTapCallback? press;
  final Color color;

  const LogoutCupertinoButton(
      {Key? key, this.text, this.press, this.color = kPrimaryColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: TextButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "로그아웃",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        "로그아웃 하시면 서비스 사용이 불가능하며 \n초기화면으로 돌아갑니다. \n정말로 로그아웃 하시겠습니까?",
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.0),
                                border: Border.all(
                                    color: kPrimaryColor, width: 2.0),
                              ),
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                "취소",
                                style: TextStyle(color: kPrimaryColor),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, Move.loginPage);
                            },
                            child: Container(
                              width: 120,
                              decoration: BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius: BorderRadius.circular(15.0),
                                border: Border.all(
                                    color: kPrimaryColor, width: 2.0),
                                // 테두리 색상 및 두께
                              ),
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                "로그아웃",
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        style: TextButton.styleFrom(
          backgroundColor: kPrimaryColor,
          minimumSize: Size(400, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          "${text}",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
