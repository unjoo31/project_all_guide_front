import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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

TextTheme textTheme() {
  return TextTheme(
    displayLarge:
        GoogleFonts.nanumGothic(fontSize: 18.0, fontWeight: FontWeight.bold),
    displayMedium:
        GoogleFonts.nanumGothic(fontSize: 16.0, fontWeight: FontWeight.bold),
    displaySmall:
        GoogleFonts.nanumGothic(fontSize: 14.0, fontWeight: FontWeight.bold),
    titleMedium: GoogleFonts.nanumGothic(fontSize: 16.0),
    bodyLarge: GoogleFonts.nanumGothic(fontSize: 15.0),
    bodyMedium: GoogleFonts.nanumGothic(fontSize: 14.0),
    bodySmall: GoogleFonts.nanumGothic(fontSize: 11.0),
  );
}
