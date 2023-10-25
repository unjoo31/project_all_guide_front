import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../_core/constants/colors.dart';

class IconButtonOff extends StatefulWidget {
  final String? imgPath;
  final GestureTapCallback? onPressed;

  const IconButtonOff({
    Key? key,
    this.imgPath,
    this.onPressed,
  }) : super(key: key);

  @override
  _IconButtonOffState createState() => _IconButtonOffState();
}

class _IconButtonOffState extends State<IconButtonOff> {
  Color iconColor = kUnPointColor;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          iconColor = kPrimaryColor;
        });

        if (widget.onPressed != null) {
          widget.onPressed!();
        }
      },
      icon: SvgPicture.asset(
        widget.imgPath ?? "assets/bookmark.svg",
        color: iconColor,
        width: 20,
        height: 20,
      ),
    );
  }
}
