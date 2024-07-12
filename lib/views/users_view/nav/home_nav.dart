import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:school_project/views/constant/app_colors.dart';
import 'package:school_project/views/users_view/student/student_view.dart';
import 'package:school_project/views/users_view/counsellor/counsellor_view.dart';

int selectedIndexView = 0;
List<Widget> navViews = [
  const StudentView(),
  const CounsellorView(),
];

class HomeNav extends StatefulWidget {
  const HomeNav({super.key});

  @override
  State<HomeNav> createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
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
                      icon: Icons.person_3_outlined,
                      iconColor: whiteColor,
                      text: 'Student',
                    ),
                    GButton(
                      icon: Icons.book_outlined,
                      iconColor: whiteColor,
                      text: 'Counsellor',
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
