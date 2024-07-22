import 'package:flutter/material.dart';
import 'package:school_project/views/widgets/app_text.dart';
// this class handles all the app text styling

class AppTextStyle {
  // large bold font
  static TextStyle largeBold(Color color, {double? fontSize}) {
    return TextStyle(
      color: color,
      fontWeight: FontWeight.bold,
      fontSize: fontSize ?? AppTextSize.largeBoldFont,
    );
  }

  static TextStyle mediumBoldFont(Color color, {double? fontSize}) {
    return TextStyle(
      color: color,
      fontWeight: FontWeight.bold,
      fontSize: fontSize ?? AppTextSize.mediumBoldFont,
    );
  }

  // bold font
  static TextStyle bold(
    Color color,
  ) {
    return TextStyle(
      color: color,
      fontWeight: FontWeight.bold,
      fontSize: AppTextSize.boldFont,
    );
  }

  // text with medium size but bold font
  static TextStyle boldMedium(
    Color color,
  ) {
    return TextStyle(
      color: color,
      fontWeight: FontWeight.bold,
      fontSize: AppTextSize.mediumFont,
    );
  }

  // small text with bold font
  static TextStyle boldSmall(
    Color color,
  ) {
    return TextStyle(
      color: color,
      fontSize: AppTextSize.smallFont,
    );
  }

  // medium font
  static TextStyle medium(
    Color color,
  ) {
    return TextStyle(
      color: color,
      fontWeight: FontWeight.w700,
      fontSize: AppTextSize.mediumFont,
    );
  }

  // for smallest fonts
  static TextStyle mediumSmall(
    Color color,
  ) {
    return TextStyle(
      color: color,
      fontWeight: FontWeight.w400,
      fontSize: AppTextSize.smallFont,
    );
  }
}
