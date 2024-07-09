import 'student_home_export.dart';

// this is the UI that is displaying the calender 
//and also allows student to pic time of appointment
TextEditingController appointmentType = TextEditingController();

class SelectDate extends StatelessWidget {
  const SelectDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              navigateTo(const StudentHomeNav());
            },
            child: const Icon(Icons.arrow_back_rounded)),
        title: AppText.normalText(
          "Select date and time",
          AppTextStyle.medium(
            deepBlue,
          ),
          1,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: SizedBox(
        width: 100.w,
        height: 100.h,
        child: Padding(
          padding: EdgeInsets.only(left: 3.w, right: 3.w, top: 2.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CalenderWidget(),
                SizedBox(height: 2.h),
                SizedBox(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: AppText.normalText(
                          "Time slot",
                          AppTextStyle.medium(
                            deepBlue,
                          ),
                          1,
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      const TimeSlot(),
                      SizedBox(
                        height: 2.h,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: AppText.normalText(
                          "Appointment Type",
                          AppTextStyle.medium(
                            deepBlue,
                          ),
                          1,
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      TextInput(
                        textInput: appointmentType,
                        hintText: 'Appointment Type',
                        borderColor: skyBlue,
                        inputColor: skyBlue,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: materialButton(
                          text: 'Confirm Appointment',
                          buttonBkColor: deepBlue,
                          textColor: whiteColor,
                          onPres: () {
                            appointmentCheck();
                          },
                          borderRadiusSize: 15.sp,
                          width: 100.w,
                          height: 8.h,
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }

  appointmentCheck() async {
    if (datePicked.isEmpty || selectedTime.isEmpty) {
      showCustomSnackBar(context, 'Date must be selected');
    } else {
      myDialog(
          ht: 50,
          Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.gpp_good_outlined,
                color: skyBlue,
                size: 35.sp,
              ),
              SizedBox(height: 2.h),
              Text(
                'Appointment booked Successful',
                textAlign: TextAlign.center,
                style: AppTextStyle.boldMedium(
                  skyBlue,
                ),
              ),
              SizedBox(height: 1.h),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Details',
                  textAlign: TextAlign.center,
                  style: AppTextStyle.boldMedium(
                    deepBlue,
                  ),
                ),
              ),
              SizedBox(height: 2.h),
              rowWid("Date", datePicked),
              SizedBox(height: 2.h),
              rowWid("Time", selectedTime),
              SizedBox(height: 2.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 6,
                    child: Text(
                      "Appointment-type",
                      textAlign: TextAlign.left,
                      style: AppTextStyle.boldMedium(
                        skyBlue,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                  Flexible(
                    flex: 4,
                    child: AppText.overFlowText(
                      appointmentType.text,
                      AppTextStyle.boldMedium(
                        skyBlue,
                      ),
                      2,
                    ),
                  ),
                ],
              )
            ],
          )));
      datePicked = '';
      selectedTime = '';
      appointmentType.clear();
      await durationSeconds(6, () {});
      navigateTo(const StudentHomeNav());
    }
  }

  Widget rowWid(String text1, text2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          textAlign: TextAlign.center,
          style: AppTextStyle.boldMedium(
            skyBlue,
          ),
        ),
        Text(
          text2,
          textAlign: TextAlign.center,
          style: AppTextStyle.boldMedium(
            skyBlue,
          ),
        ),
      ],
    );
  }
}

String selectedTime = '';

class TimeSlot extends StatefulWidget {
  const TimeSlot({super.key});

  @override
  State<TimeSlot> createState() => _TimeSlotState();
}

class _TimeSlotState extends State<TimeSlot> {
  bool isSelected1 = false;
  bool isSelected2 = false;
  bool isSelected3 = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          timeContainer(isSelected1 ? whiteColor : deepBlue,
              isSelected1 ? deepBlue : whiteColor, "10:00 AM", () {
            setState(() {
              isSelected1 = !isSelected1;
              selectedTime = "10:00 AM";
            });
          }),
          timeContainer(isSelected2 ? whiteColor : deepBlue,
              isSelected2 ? deepBlue : whiteColor, "12:00 PM", () {
            setState(() {
              isSelected2 = !isSelected2;
              selectedTime = "12:00 AM";
            });
          }),
          timeContainer(isSelected3 ? whiteColor : deepBlue,
              isSelected3 ? deepBlue : whiteColor, "1:00 PM", () {
            setState(() {
              isSelected3 = !isSelected3;
              selectedTime = "1:00 PM";
            });
          }),
        ],
      ),
    );
  }

  Widget timeContainer(
      Color color, backgroundColor, String text, VoidCallback callback) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        width: 28.w,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: skyBlue,
            width: 7.sp,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Center(
            child: FittedBox(
              child: Text(
                text,
                style: TextStyle(
                  color: color,
                  fontWeight: FontWeight.bold,
                  fontSize: 19.sp,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

String datePicked = '';

class CalenderWidget extends StatefulWidget {
  const CalenderWidget({super.key});

  @override
  State<CalenderWidget> createState() => _CalenderWidgetState();
}

class _CalenderWidgetState extends State<CalenderWidget> {
  DateTime focusedDay = DateTime.now();
  DateTime? selectedDay;

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: DateTime(2000),
      lastDay: DateTime(2100),
      focusedDay: focusedDay,
      selectedDayPredicate: (day) {
        return isSameDay(selectedDay, day);
      },
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          this.selectedDay = selectedDay;
          this.focusedDay = focusedDay;
          datePicked =
              "${selectedDay.day}, ${selectedDay.month}, ${selectedDay.year}";
        });
      },
      calendarStyle: CalendarStyle(
        todayDecoration: BoxDecoration(
          color: skyBlue,
          shape: BoxShape.circle,
        ),
        selectedDecoration: const BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
