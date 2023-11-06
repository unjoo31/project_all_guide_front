import 'package:flutter/material.dart';

class MyListGuide extends StatelessWidget {
  final String guideName;
  final String guideImg;
  final String guideUrl;

  const MyListGuide({
    required this.guideName,
    required this.guideImg,
    required this.guideUrl,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '${guideUrl}');
      },
      child: Container(
        child: SizedBox(
          height: 60,
          child: Row(
            children: [
              SizedBox(width: 20),
              Image.asset(
                "assets/${guideImg}",
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  "${guideName}",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              Spacer(),
              Image.asset(
                "assets/right_arrow.png",
              ),
              SizedBox(width: 20),
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20.0),
            bottom: Radius.circular(20.0),
          ),
          border: Border.all(
            color: Colors.grey.withOpacity(0.3),
            width: 1.0,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
      ),
    );
  }
}
