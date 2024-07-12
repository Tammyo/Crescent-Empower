import 'widget_export.dart';



Widget materialButton({
  required String text,
  required Color buttonBkColor,
  required Color textColor,
  required VoidCallback onPres,
  double borderRadiusSize = 18.0,
  double? width,
  double? height,
}) {
  return SizedBox(
    width: width,
    height: height,
    child: MaterialButton(
      onPressed: onPres,
      color: buttonBkColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadiusSize),
      ),
      child: AppText.normalText(text, AppTextStyle.boldMedium(textColor), 1),
    ),
  );
}

// this is an outline button
Widget outLineButton(
  String text,
  Color color,
  VoidCallback onPres,
) {
  return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: color),
      ),
      onPressed: onPres,
      child: AppText.normalText(text, AppTextStyle.boldMedium(color), 1));
}
