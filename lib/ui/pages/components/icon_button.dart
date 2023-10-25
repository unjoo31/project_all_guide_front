import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconButtonOff extends StatelessWidget {
  final String? imgPath;
  final GestureTapCallback? onPressed;

  const IconButtonOff({
    Key? key,
    this.imgPath,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        imgPath ?? "assets/bookmark.svg",
      ),
    );
  }
}
