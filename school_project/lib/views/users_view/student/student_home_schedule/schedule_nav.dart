import 'home_schedule_export.dart';


int selectedIndexView = 0;
List<Widget> navViews = [
  const UpcomingSchedule(),
  const CompletedSchedule(),
];

class ScheduleNav extends StatefulWidget {
  const ScheduleNav({super.key});

  @override
  State<ScheduleNav> createState() => _ScheduleNavState();
}

class _ScheduleNavState extends State<ScheduleNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: navViews.elementAt(selectedIndexView),
        ),
        bottomNavigationBar: Container(
            color: skyBlue,
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.only(
                    left: 10.w, right: 10.w, top: 1.h, bottom: 1.h),
                child: GNav(
                  rippleColor: whiteColor,
                  hoverColor: whiteColor,
                  gap: 8,
                  activeColor: deepBlue,
                  iconSize: 24,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  duration: const Duration(milliseconds: 400),
                  tabBackgroundColor: whiteColor,
                  color: skyBlue,
                  tabs: [
                    GButton(
                      icon: Icons.arrow_circle_up_outlined,
                      iconColor: whiteColor,
                      text: 'Upcoming',
                    ),
                    GButton(
                      icon: Icons.gpp_good_outlined,
                      iconColor: whiteColor,
                      text: 'Completed',
                    ),
                  ],
                  selectedIndex: selectedIndexView,
                  onTabChange: (index) {
                    setState(() {
                      selectedIndexView = index;
                    });
                  },
                ),
              ),
            )));
  }
}
