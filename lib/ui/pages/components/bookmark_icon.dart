import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookmarkIcon extends StatelessWidget {
  final String? imgPath;
  final GestureTapCallback? onPressed;

  const BookmarkIcon({
    Key? key,
    this.imgPath,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: Colors.white,
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
            onPressed: onPressed,
            icon: SvgPicture.asset(
              imgPath ?? "assets/bookmark.svg",
            ),
          ),
        ),
      ],
    );
  }
}
