import 'career_path2.dart';
import 'career_path3.dart';
import 'career_path4.dart';
import 'career_path5.dart';
import 'career_path6.dart';
import 'career_path8.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:school_project/views/widgets/app_text.dart';
import 'package:school_project/views/constant/navigation.dart';
import 'package:school_project/views/constant/app_colors.dart';
import 'package:school_project/views/constant/app_text_style.dart';
import 'package:school_project/controllers/arrays_controls/counsellor_control.dart';
import 'package:school_project/views/users_view/student/student_home/career_path/career_path7.dart';

class CareerPath extends StatelessWidget {
  const CareerPath({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      const CareerSoftware(),
      const CareerBuilding(),
      const CareerActScience(),
      const CareerMobile(),
      const CareerPharmacology(),
      const CareerGame(),
      const CareerSoftware(),
      const CareerDigitalMarketing()
    ];
    return SizedBox(
        width: 100.w,
        height: 100.h,
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
                child: Column(children: [
              SizedBox(
                width: 100.w,
                child: AppBar(
                  title: AppText.normalText(
                      'Career Path',
                      AppTextStyle.bold(
                        deepBlue,
                      ),
                      1),
                ),
              ),
              SizedBox(height: 4.h),
              SizedBox(
                  width: 100.w,
                  height: 80.h,
                  child: ListView.builder(
                      itemCount: listCareerPath.length,
                      itemBuilder: (context, index) {
                        int indexArray = index;
                        return Padding(
                          padding: EdgeInsets.only(bottom: 5.h, left: 6.w),
                          child: GestureDetector(
                            onTap: () {
                              navigateTo(screens[index]);
                            },
                            child: Text(
                              listCareerPath[indexArray],
                              style: TextStyle(
                                color: skyBlue,
                                decoration: TextDecoration.underline,
                                fontSize: AppTextSize.mediumFont,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        );
                      }))
            ]))));
  }
}
