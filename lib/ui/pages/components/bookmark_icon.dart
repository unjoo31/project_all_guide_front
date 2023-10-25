import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../_core/constants/colors.dart';

class BookmarkIcon extends StatefulWidget {
  final String? imgPath;
  final GestureTapCallback? onPressed;

  const BookmarkIcon({
    Key? key,
    this.imgPath,
    this.onPressed,
  }) : super(key: key);

  @override
  _BookmarkIconState createState() => _BookmarkIconState();
}

class _BookmarkIconState extends State<BookmarkIcon> {
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
            onPressed: handleIconPress,
            icon: SvgPicture.asset(
              widget.imgPath ?? "assets/bookmark.svg",
              color: iconColor,
            ),
          ),
        ),
      ],
    );
  }
}
