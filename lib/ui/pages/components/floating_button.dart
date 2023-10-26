import 'package:flutter/material.dart';

import '../../../_core/constants/colors.dart';

class FloatingButton extends StatefulWidget {
  final String? imgPath;
  final String? where;
  final GestureTapCallback? onPressed;

  const FloatingButton({
    Key? key,
    this.imgPath,
    this.where,
    this.onPressed,
  }) : super(key: key);

  @override
  State<FloatingButton> createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
  Color containerColor = Colors.white;
  Color iconColor = kPrimaryColor;

  void handleIconPress() {
    setState(() {
      containerColor = kPrimaryColor;
      iconColor = kPrimaryColor;
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
          width: 50,
          height: 50,
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
            icon: Image.asset(
              widget.imgPath ?? "assets/bookmark.svg",
              color: iconColor,
            ),
          ),
        ),
      ],
    );
  }
}
