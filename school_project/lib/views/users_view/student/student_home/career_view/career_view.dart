import 'export_career.dart';


class Career extends StatelessWidget {
  const Career({Key? key}) : super(key: key);

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
              SizedBox(width: 100.w, child: barWidget('Choose Counsellor')),
              SizedBox(
                width: 100.w,
                child: AppText.overFlowText(
                  "Talk to a career professional",
                  AppTextStyle.medium(
                    skyBlue,
                  ),
                  3,
                ),
              ),
              const CounsellorNames(),
              SizedBox(
                height: 2.h,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: materialButton(
                  text: 'Book',
                  buttonBkColor: deepBlue,
                  textColor: whiteColor,
                  onPres: () {
                    navigateTo(const SelectDate());
                  },
                  borderRadiusSize: 15.sp,
                  width: 30.w,
                  height: 7.h,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// list to show available counsellor for booking
class CounsellorNames extends StatefulWidget {
  const CounsellorNames({super.key});

  @override
  State<CounsellorNames> createState() => _CounsellorNamesState();
}

class _CounsellorNamesState extends State<CounsellorNames> {
  List<bool> _isCheckedList = [];


  @override
  void initState() {
    super.initState();
    _isCheckedList = List<bool>.filled(counsellorNames.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      height: 65.h,
      child: ListView.builder(
          itemCount: counsellorNames.length,
          itemBuilder: (context, index) {
            int indexArray = index;
            return Container(
              decoration: BoxDecoration(
                border: Border.all(color: skyBlue, width: 0.06.dp),
                borderRadius: BorderRadius.circular(10.sp),
              ),
              margin: EdgeInsets.only(top: 2.h),
              child: ListTile(
                title: Text(
                  counsellorNames[indexArray][0],
                  style: TextStyle(
                    color: deepBlue,
                    fontWeight: FontWeight.w700,
                    fontSize: 0.23.dp,
                  ),
                ),
                subtitle: AppText.overFlowText(
                  counsellorNames[indexArray][1],
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
                      for (int i = 0; i < _isCheckedList.length; i++) {
                        _isCheckedList[i] = false;
                      }
                      _isCheckedList[index] = value!;
                    });
                  },
                ),
              ),
            );
          }),
    );
  }
}
