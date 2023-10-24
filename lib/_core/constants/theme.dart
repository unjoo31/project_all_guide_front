import 'package:flutter/material.dart';
import 'package:project_all_guide_front/_core/constants/size.dart';

import 'colors.dart';

ThemeData theme() {
  return ThemeData(
    fontFamily: "NanumSquare",
    appBarTheme: AppBarTheme(
      backgroundColor: kBackWhite,
      elevation: 0.0,
      titleTextStyle: TextStyle(
          color: kFontBlack,
          fontSize: font_medium,
          fontWeight: FontWeight.bold),
      iconTheme: IconThemeData(color: kFontBlack),
      centerTitle: true,
    ),
  );
}
