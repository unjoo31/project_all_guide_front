import 'package:flutter/material.dart';

import '../../../_core/constants/colors.dart';

class BackIcon extends StatefulWidget {
  final String? imgPath;
  final GestureTapCallback? onPressed;

  const BackIcon({
    Key? key,
    this.imgPath,
    this.onPressed,
  }) : super(key: key);

  @override
  _BookmarkIconState createState() => _BookmarkIconState();
}

class _BookmarkIconState extends State<BackIcon> {
  Color containerColor = Colors.white;
  Color iconColor = kUnPointColor;

  void handleIconPress() {
    setState(() {
      containerColor = kPrimaryColor;
      iconColor = Colors.white;
    });

    if (widget.onPressed != null) {
      widget.onPressed!();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: containerColor,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 10,
                offset: Offset(0, 3),
              ),
            ],
          ),
        ),
        Positioned(
          child: IconButton(
            onPressed: () {
              // 클릭이벤트 처리
              if (widget.onPressed != null) {
                widget.onPressed!();
              }
              // 현재 화면을 닫기
              Navigator.pop(context);
            },
            icon: Image.asset(
              widget.imgPath ?? "assets/back.png",
              color: Colors.black, // BackIcon의 색상 지정
            ),
          ),
        ),
      ],
    );
  }
}
