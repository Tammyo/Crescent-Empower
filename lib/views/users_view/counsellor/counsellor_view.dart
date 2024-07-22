import 'package:flutter/material.dart';
import 'package:school_project/views/widgets/bar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:school_project/views/widgets/app_text.dart';
import 'package:school_project/views/constant/app_colors.dart';
import 'package:school_project/views/constant/app_text_style.dart';
import 'package:school_project/controllers/arrays_controls/counsellor_control.dart';

class CounsellorView extends StatelessWidget {
  const CounsellorView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      height: 100.h,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
                height: 10.h,
                width: 100.w,
                child: barWidget('Appointment List')),
            const AppointmentList()
          ],
        ),
      ),
    );
  }
}

// list to show appointment to the counsellor
class AppointmentList extends StatefulWidget {
  const AppointmentList({super.key});

  @override
  State<AppointmentList> createState() => _AppointmentListState();
}

class _AppointmentListState extends State<AppointmentList> {
  List<bool> _isCheckedList = [];

  @override
  void initState() {
    super.initState();
    _isCheckedList = List<bool>.filled(checkListInfo.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      height: 74.h,
      child: ListView.builder(
          itemCount: checkListInfo.length,
          itemBuilder: (context, index) {
            int indexArray = index; 
            return Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: skyBlue,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10.sp),
              ),
              margin: EdgeInsets.only(top: 2.h),
              child: ListTile(
                title: AppText.normalText(
                  checkListInfo[ indexArray][0],
                  AppTextStyle.medium(
                    deepBlue,
                  ),
                  1,
                ),
                subtitle: AppText.overFlowText(
                  checkListInfo[ indexArray][1],
                  AppTextStyle.mediumSmall(
                    skyBlue,
                  ),
                  3,
                ),
                trailing: Checkbox(
                  value: _isCheckedList[index],
                  activeColor: deepBlue,
                  checkColor: whiteColor,
                  onChanged: (value) {
                    setState(() {
                      _isCheckedList[index] = value!;
                      print(
                          'Checkbox at index $index is ${_isCheckedList[index]}');
                    });
                  },
                ),
              ),
            );
          }),
    );
  }
}
