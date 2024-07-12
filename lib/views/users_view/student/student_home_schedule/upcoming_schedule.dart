import 'home_schedule_export.dart';

// view to show list of upcoming schedule that the counsellor have not mark

class UpcomingSchedule extends StatelessWidget {
  const UpcomingSchedule({super.key});

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
                child: barWidget('Upcoming Appointment List')),
            const UpcomingList()
          ],
        ),
      ),
    );
  }
}

// list to show up coming appointment to the student
class UpcomingList extends StatefulWidget {
  const UpcomingList({super.key});

  @override
  State<UpcomingList> createState() => _UpcomingListState();
}

class _UpcomingListState extends State<UpcomingList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      height: 74.h,
      child: ListView.builder(
          itemCount: upComingListSchedule.length,
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
                    upComingListSchedule[indexArray][0],
                    AppTextStyle.medium(
                      deepBlue,
                    ),
                    1,
                  ),
                  subtitle: AppText.overFlowText(
                    upComingListSchedule[indexArray][1],
                    AppTextStyle.mediumSmall(
                      skyBlue,
                    ),
                    3,
                  ),
                  trailing: Icon(
                    Icons.pin_invoke_rounded,
                    color: deepBlue,
                  )),
            );
          }),
    );
  }
}
