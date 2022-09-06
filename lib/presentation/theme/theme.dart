
import 'package:flutter/material.dart';

import 'colors.dart';
import 'fonts.dart';

class ApplicationTheme {

  static ThemeData get lightTheme {
    return ThemeData(
        primaryColor: ApplicationColor.white,
        colorScheme: ThemeData().colorScheme.copyWith(
          primary: ApplicationColor.primaryColor,
        ),
        scaffoldBackgroundColor: ApplicationColor.white,
        fontFamily: ApplicationFont.dinNextFontFamily,
    );
  }
}

