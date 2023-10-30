import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../_core/constants/colors.dart';

class CategoryBoxCard extends StatelessWidget {
  final String? title;
  final String? icon;
  const CategoryBoxCard({this.title, this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        margin: EdgeInsets.zero,
        color: Colors.white,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
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
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  title ?? "",
                  style: TextStyle(color: kFontBlack, fontSize: 16),
                ),
                Spacer(),
                SizedBox(
                  width: 26,
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      icon ?? "assets/right-arrow.svg",
                      color: kFontBlack,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
