import 'student_home_export.dart';
import 'counseling_view/counseling_view.dart';
import 'package:school_project/views/users_view/student/student_home/career_path/career_path.dart';


int selectedIndexView = 0;
List<Widget> navViews = [
  const Counseling(),
  const Career(),
  const Internship(),
  const NewTips(),
  const CareerPath(),
];

class StudentHomeNav extends StatefulWidget {
  const StudentHomeNav({super.key});

  @override
  State<StudentHomeNav> createState() => _StudentHomeNavState();
}

class _StudentHomeNavState extends State<StudentHomeNav> {
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
                    left: 1.w, right: 1.w, top: 1.h, bottom: 1.h),
                child: GNav(
                  rippleColor: whiteColor,
                  hoverColor: whiteColor,
                  gap: 3,
                  activeColor: deepBlue,
                  iconSize: 24,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                  duration: const Duration(milliseconds: 400),
                  tabBackgroundColor: whiteColor,
                  color: skyBlue,
                  tabs: [
                    GButton(
                      icon: Icons.person_3_outlined,
                      iconColor: whiteColor,
                      text: 'Counseling',
                    ),
                    GButton(
                      icon: Icons.book_outlined,
                      iconColor: whiteColor,
                      text: 'Career',
                    ),
                    GButton(
                      icon: Icons.person_3_outlined,
                      iconColor: whiteColor,
                      text: 'Internship',
                    ),
                    GButton(
                      icon: Icons.book_outlined,
                      iconColor: whiteColor,
                      text: 'New & Tips',
                    ),
                    GButton(
                      icon: Icons.chrome_reader_mode_outlined,
                      iconColor: whiteColor,
                      text: 'Career',
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
