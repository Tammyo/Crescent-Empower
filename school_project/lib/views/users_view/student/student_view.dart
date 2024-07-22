import 'package:school_project/views/widgets/bar.dart';
import 'package:school_project/views/users_view/student/student_home/student_home_export.dart';
import 'package:school_project/views/users_view/student/student_home_schedule/schedule_nav.dart';

// this is the view that give the student the option to for info
class StudentView extends StatelessWidget {
  const StudentView({super.key});

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
              height: 2.h,
            ),
            SizedBox(
                height: 6.h, width: 100.w, child: barWidget('Student Home')),
            GestureDetector(
              onTap: () {
                navigateTo(const StudentHomeNav());
              },
              child: showList(
                  'Home',
                  Icon(
                    Icons.arrow_circle_right_outlined,
                    color: deepBlue,
                  )),
            ),
            GestureDetector(
              onTap: () {
                navigateTo(const ScheduleNav());
              },
              child: showList(
                  'Schedules Info',
                  Icon(
                    Icons.arrow_circle_right_outlined,
                    color: deepBlue,
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Widget showList(String text, Widget iconWidget) {
    return Container(
      margin: EdgeInsets.only(top: 2.h),
      decoration: BoxDecoration(
        border: Border.all(
          color: skyBlue,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(15.sp),
      ),
      child: ListTile(
        leading: AppText.normalText(text, AppTextStyle.boldMedium(deepBlue), 1),
        trailing: iconWidget,
      ),
    );
  }
}
