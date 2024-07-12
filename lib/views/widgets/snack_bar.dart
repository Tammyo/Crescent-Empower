import 'widget_export.dart';


// this will show the snackbar widget when its called
void showCustomSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(snackBar(text));
}

SnackBar snackBar(String text) {
  return SnackBar(
    content: AppText.normalText(
        text,
        AppTextStyle.medium(
          whiteColor,
        ),
        1),
    backgroundColor: deepBlue,
    elevation: 10,
    duration: durationTwoSec,
    behavior: SnackBarBehavior.floating,
    margin: const EdgeInsets.all(5),
  );
}
