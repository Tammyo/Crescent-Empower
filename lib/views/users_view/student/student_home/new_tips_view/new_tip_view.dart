import 'package:flutter/material.dart';
import 'package:school_project/views/widgets/bar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:school_project/views/widgets/app_text.dart';
import 'package:school_project/views/constant/app_colors.dart';
import 'package:school_project/views/constant/app_text_style.dart';
import 'package:school_project/controllers/arrays_controls/counsellor_control.dart';

class NewTips extends StatelessWidget {
  const NewTips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      height: 100.h,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(width: 100.w, child: barWidget('News & Tips')),
              const Articles(),
              SizedBox(
                height: 3.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// list to show available counsellor for booking
class Articles extends StatelessWidget {
  const Articles({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      height: 75.h,
      child: ListView.builder(
          itemCount: articlesNames.length,
          itemBuilder: (context, index) {
            int indexArray = index;
            return Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: skyBlue,
                  width: 0.06.dp,
                ),
                borderRadius: BorderRadius.circular(10.sp),
              ),
              margin: EdgeInsets.only(top: 2.h),
              child: ListTile(
                title: Text(
                  articlesNames[indexArray][0],
                  style: TextStyle(
                    color: deepBlue,
                    fontWeight: FontWeight.w700,
                    fontSize: 0.23.dp,
                  ),
                ),
                subtitle: AppText.overFlowText(
                  articlesNames[indexArray][1],
                  AppTextStyle.mediumSmall(
                    skyBlue,
                  ),
                  10,
                ),
              ),
            );
          }),
    );
  }
}
