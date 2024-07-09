import 'home_schedule_export.dart';


// view to show list of completed schedule that the counsellor mark

class CompletedSchedule extends StatelessWidget {
  const CompletedSchedule({super.key});

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
                child: barWidget('Completed Appointment List')),
            const CompletedAppointmentList()
          ],
        ),
      ),
    );
  }
}

// list to show completed appointment to the counsellor
class CompletedAppointmentList extends StatefulWidget {
  const CompletedAppointmentList({super.key});

  @override
  State<CompletedAppointmentList> createState() =>
      _CompletedAppointmentListState();
}

class _CompletedAppointmentListState extends State<CompletedAppointmentList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      height: 74.h,
      child: ListView.builder(
          itemCount: completedListSchedule.length,
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
                  completedListSchedule[indexArray][0],
                  AppTextStyle.medium(
                    deepBlue,
                  ),
                  1,
                ),
                subtitle: AppText.overFlowText(
                  completedListSchedule[indexArray][1],
                  AppTextStyle.mediumSmall(
                    skyBlue,
                  ),
                  3,
                ),
                trailing:  Icon(
                    Icons.gpp_good_outlined,
                    color: deepBlue,
                  )
              ),
            );
          }),
    );
  }
}
