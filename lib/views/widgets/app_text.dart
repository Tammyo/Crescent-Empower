import 'widget_export.dart';


// this is the font size for all text displayed
class AppTextSize {
  static double largeBoldFont = 30;
  static double mediumBoldFont = 24;
  static double boldFont = 20;
  static double mediumFont = 15.5;
  static double smallFont = 12;
}

// making a resize able text to fit in any screen
class AppText {
  static Text normalText(String text, TextStyle styling, int maxLine) {
    return Text(
      text,
      style: styling,
      maxLines: maxLine,
    );
  }

  static Text overFlowText(
      String text, TextStyle styling, int maxLine) {
    return Text(
      text,
      style: styling,
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
    );
  }

    static RichText richText(
          String text1,
    text2,
    TextStyle styling1,
    styling2,
      {TextAlign textAlign = TextAlign.center}
      ) {
    return RichText(
      textAlign: textAlign,
      text:       TextSpan(
        text: text1,
        children: [
          TextSpan(
            text: text2,
            style: styling1,
          ),
        ],
        style: styling2,
      ),
    );
  }
}
