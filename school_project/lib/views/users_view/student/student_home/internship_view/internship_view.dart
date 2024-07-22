import 'package:flutter/material.dart';
import 'package:school_project/views/widgets/bar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:school_project/views/widgets/buttons.dart';
import 'package:school_project/views/widgets/app_text.dart';
import 'package:school_project/views/constant/duration.dart';
import 'package:school_project/views/widgets/snack_bar.dart';
import 'package:school_project/views/widgets/user_input.dart';
import 'package:school_project/views/constant/navigation.dart';
import 'package:school_project/views/constant/app_colors.dart';
import 'package:school_project/views/constant/dialog_view.dart';
import 'package:school_project/views/constant/app_text_style.dart';
import 'package:school_project/views/users_view/student/student_home/student_home_nav.dart';

TextEditingController input1 = TextEditingController();
TextEditingController input2 = TextEditingController();
TextEditingController input3 = TextEditingController();
TextEditingController input4 = TextEditingController();
TextEditingController input5 = TextEditingController();

class Internship extends StatelessWidget {
  const Internship({Key? key}) : super(key: key);

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
              SizedBox(
                  width: 100.w,
                  child: barWidget(
                    "Internship Guide",
                  )),
              SizedBox(
                height: 2.h,
              ),
              const ApplyBox(),
              SizedBox(
                height: 3.h,
              ),
              SizedBox(
                width: 100.w,
                child: AppText.overFlowText(
                  'Internship Payment',
                  AppTextStyle.bold(
                    deepBlue,
                  ),
                  1,
                ),
              ),
              SizedBox(
                width: 100.w,
                child: AppText.overFlowText(
                  "Pay for your internship letter on sts and print here",
                  AppTextStyle.medium(
                    skyBlue,
                  ),
                  3,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              SizedBox(
                // color: Colors.red,
                height: 70.h,
                width: 100.w,
                child: Padding(
                  padding: const EdgeInsets.all(9),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TextInput(
                          textInput: input1,
                          hintText: 'Student Name',
                          borderColor: deepBlue,
                          inputColor: deepBlue,
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        TextInput(
                          textInput: input2,
                          hintText: 'Department Name',
                          borderColor: deepBlue,
                          inputColor: deepBlue,
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        TextInput(
                          textInput: input3,
                          hintText: 'Student Id',
                          borderColor: deepBlue,
                          inputColor: deepBlue,
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        TextInput(
                          textInput: input4,
                          hintText: 'Payment Amount',
                          borderColor: deepBlue,
                          inputColor: deepBlue,
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        TextInput(
                          textInput: input5,
                          hintText: 'Card Number',
                          borderColor: deepBlue,
                          inputColor: deepBlue,
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: materialButton(
                            text: 'Confirm Payment',
                            buttonBkColor: deepBlue,
                            textColor: whiteColor,
                            onPres: () {
                              checks();
                            },
                            borderRadiusSize: 15.sp,
                            width: 90.w,
                            height: 8.h,
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  static checks() async {
    if (input1.text.isEmpty ||
        input2.text.isEmpty ||
        input3.text.isEmpty ||
        input4.text.isEmpty ||
        input5.text.isEmpty) {
      showCustomSnackBar(context, 'All inputs are required!!');
    } else {
      myDialog(Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.gpp_good_outlined,
            color: skyBlue,
            size: 35.sp,
          ),
          SizedBox(
            height: 2.h,
          ),
          Text(
            'Payment Successfully received',
            textAlign: TextAlign.center,
            style: AppTextStyle.boldMedium(
              skyBlue,
            ),
          ),
        ],
      )));
      input1.text = '';
      input2.text = '';
      input3.text = '';
      input4.text = '';
      input5.text = '';
      await durationSeconds(2, () {});
      navigateTo(const StudentHomeNav());
    }
  }
}

class ApplyBox extends StatefulWidget {
  const ApplyBox({Key? key}) : super(key: key);

  @override
  State<ApplyBox> createState() => _ApplyBoxState();
}

class _ApplyBoxState extends State<ApplyBox> {
  bool isSelected1 = false;
  bool isSelected2 = false;
  bool isSelected3 = false;
  bool isSelected4 = false;
  bool isSelected5 = false;
  bool isSelected6 = false;
  bool isSelected7 = false;
  bool isSelected8 = false;
  bool isSelected9 = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      child: Wrap(
        spacing: 10,
        runSpacing: 15,
        children: [
          boxContainer(
            'UI Designer intern',
            'Hy-bird',
            '2 Months',
            isSelected1 ? whiteColor : deepBlue,
            isSelected1 ? deepBlue : whiteColor,
            () {
              setState(() {
                isSelected1 = !isSelected1;
              });
            },
          ),
          boxContainer(
            'Actuarial & financial intern',
            'Remote',
            '4 Months',
            isSelected2 ? whiteColor : deepBlue,
            isSelected2 ? deepBlue : whiteColor,
            () {
              setState(() {
                isSelected2 = !isSelected2;
              });
            }
          ),
          boxContainer(
            'Web Dev intern',
            'Remote',
            '1 Month',
            isSelected3 ? whiteColor : deepBlue,
            isSelected3 ? deepBlue : whiteColor,
            () {
              setState(() {
                isSelected3 = !isSelected3;
              });
            }
          ),
          boxContainer(
            'Legal Practitioner Intern',
            'On-site',
            '5 Month',
            isSelected8 ? whiteColor : deepBlue,
            isSelected8 ? deepBlue : whiteColor,
            () {
              setState(() {
                isSelected8 = !isSelected8;
              });
            }
          ),
          boxContainer(
            'Digital Marketing Intern',
            'Remote',
            '6 Month',
            isSelected4 ? whiteColor : deepBlue,
            isSelected4 ? deepBlue : whiteColor,
            () {
              setState(() {
                isSelected4 = !isSelected4;
              });
            }
          ),
          boxContainer(
            'Building Construction Intern',
            'On-site',
            '3 Month',
            isSelected7 ? whiteColor : deepBlue,
            isSelected7 ? deepBlue : whiteColor,
            () {
              setState(() {
                isSelected7 = !isSelected7;
              });
            },
          ),
          boxContainer(
            'Mobile Dev intern',
            'On-site',
            '2 Month',
            isSelected5 ? whiteColor : deepBlue,
            isSelected5 ? deepBlue : whiteColor,
            () {
              setState(() {
                isSelected5 = !isSelected5;
              });
            },
          ),
          boxContainer(
            'Pharmacy Intern',
            'On-site',
            '4 Month',
            isSelected9 ? whiteColor : deepBlue,
            isSelected9 ? deepBlue : whiteColor,
            () {
              setState(() {
                isSelected9 = !isSelected9;
              });
            },
          ),
          boxContainer(
            'Backend-Dev intern',
            'On-site',
            '3 Month',
            isSelected6 ? whiteColor : deepBlue,
            isSelected6 ? deepBlue : whiteColor,
            () {
              setState(() {
                isSelected6 = !isSelected6;
              });
            },
          ),
          const Text('          ')
        ],
      ),
    );
  }

  static Widget boxContainer(
    String text1,
    String text2,
    String text3,
    Color textColor,
    Color backgroundColor,
    VoidCallback callback,
  ) {
    return SizedBox(
      width: 40.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text1,
            maxLines: 2,
            style: AppTextStyle.medium(
              deepBlue,
            )
          ),
          Text(
            text2,
            maxLines: 2,
            style: AppTextStyle.mediumSmall(
              skyBlue,
            )
          ),
          Text(
            text3,
            maxLines: 2,
            style: AppTextStyle.mediumSmall(
              skyBlue,
            )
          ),
          materialButton(
            text: 'Apply',
            buttonBkColor: backgroundColor,
            textColor: textColor,
            onPres: callback,
            borderRadiusSize: 15.sp,
            width: 25.w,
            height: 5.h,
          ),
        ],
      ),
    );
  }
}
