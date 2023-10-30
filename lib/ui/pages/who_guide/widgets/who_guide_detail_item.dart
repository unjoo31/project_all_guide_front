import 'package:flutter/material.dart';

class WhoGuideDetailItem extends StatelessWidget {
  final String userImg;
  final String userName;
  final String title;
  final String content;
  final String picUrlFirst;

  const WhoGuideDetailItem({
    required this.userImg,
    required this.userName,
    required this.title,
    required this.content,
    required this.picUrlFirst,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      width: 400,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical, // 수정된 부분
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
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              child: Image.asset("assets/${userImg}"),
                            ),
                            SizedBox(width: 15),
                            Text(
                              "${userName}",
                              style: TextStyle(fontSize: 17),
                              textAlign: TextAlign.center,
                            ),
                            Spacer(),
                          ],
                        ),
                        Text(
                          "${title}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      width: 330,
                      height: 200,
                      child: ClipRRect(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(30.0),
                          bottom: Radius.circular(30.0),
                        ),
                        child: Image.asset("assets/${picUrlFirst}"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: SizedBox(
                      width: 500,
                      height: 400,
                      child: Text("${content}"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
