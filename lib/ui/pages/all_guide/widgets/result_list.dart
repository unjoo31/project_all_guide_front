import 'package:flutter/material.dart';

import '../../../../_core/constants/move.dart';
import '../../components/bookmark_icon.dart';
import '../../components/box_mini_color_button.dart';

class ResultList extends StatelessWidget {
  final String picUrl;
  final String title;
  final String browserName;

  const ResultList({
    required this.picUrl,
    required this.title,
    required this.browserName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 400,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              height: 230,
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
                      padding: const EdgeInsets.only(top: 8),
                      child: SizedBox(
                        width: 310,
                        height: 200,
                        child: ClipRRect(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(30.0),
                            bottom: Radius.circular(30.0),
                          ),
                          child: Image.asset("assets/${picUrl}"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${title}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              Text("${browserName}"),
                            ],
                          ),
                          Spacer(),
                          BoxMiniColorButton(
                            text: "자세히보기",
                            press: () {
                              Navigator.pushNamed(context, Move.joinPage);
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(width: 20),
          BookmarkIcon(
            imgPath: "assets/bookmark.svg",
          ),
          SizedBox(width: 40),
        ],
      ),
    );
  }
}
