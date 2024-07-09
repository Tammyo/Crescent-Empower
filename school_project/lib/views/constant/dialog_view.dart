import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:school_project/views/constant/app_colors.dart';
import 'package:school_project/views/constant/navigation.dart';

BuildContext context = navigateKey.currentContext!;

myDialog(Widget widget, {double ht = 35}) {
 return showDialog(
    // even if user clicks outside the dialog do not pop
    barrierDismissible: false,
    context: context,
    builder: (context) => AlertDialog(
      content: SizedBox(
        height: ht.h,
        child: widget,
      ),
      backgroundColor: whiteColor,
    ),
  );
}
