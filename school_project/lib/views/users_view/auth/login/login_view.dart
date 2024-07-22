import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:school_project/views/widgets/buttons.dart';
import 'package:school_project/views/widgets/app_text.dart';
import 'package:school_project/views/widgets/user_input.dart';
import 'package:school_project/views/constant/navigation.dart';
import 'package:school_project/views/constant/app_colors.dart';
import 'package:school_project/views/constant/app_text_style.dart';
import 'package:school_project/controllers/login_control/login_control1.dart';
import 'package:school_project/views/users_view/auth/register/register_view.dart';
import 'package:school_project/views/users_view/auth/login/login_global_variables.dart';

// this is the main view to login page
class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: skyBlue,
      body: SafeArea(
          child: Container(
        width: 100.w,
        height: 100.h,
        color: whiteColor,
        child: Column(
          children: [
            Flexible(
                flex: 4,
                child: Container(
                  width: 100.w,
                  height: 100.h,
                  color: whiteColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "asset/amico.png",
                        width: 45.sp,
                        // fit: BoxFit.cover,
                      ),
                      AppText.normalText(
                          'Crescent Empower',
                          AppTextStyle.bold(
                            deepBlue,
                          ),
                          1),
                    ],
                  ),
                )),
            Flexible(
                flex: 6,
                child: Container(
                  width: 100.w,
                  height: 100.h,
                  decoration: BoxDecoration(
                      color: skyBlue,
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30))),
                  child: SingleChildScrollView(
                      child: Padding(
                    padding: EdgeInsets.only(top: 4.h, left: 4.w, right: 4.w),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: AppText.normalText(
                              'Sign-In',
                              AppTextStyle.mediumBoldFont(
                                whiteColor,
                              ),
                              1),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        TextInput(
                          textInput: TextEditingController(),
                          hintText: 'Student Id',
                          borderColor: whiteColor,
                          inputColor: whiteColor,
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        TextInput(
                          textInput: LoginInput.userName,
                          hintText: 'Student Name',
                          borderColor: whiteColor,
                          inputColor: whiteColor,
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        TextInput(
                          textInput: LoginInput.userPassword,
                          hintText: 'Password',
                          borderColor: whiteColor,
                          inputColor: whiteColor,
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        materialButton(
                          text: 'Login',
                          buttonBkColor: deepBlue,
                          textColor: whiteColor,
                          onPres: () {
                            LoginMainControl.networkStatus();
                          },
                          borderRadiusSize: 20.sp,
                          width: 80.w,
                          height: 8.h,
                        ),
                        SizedBox(height: 3.h),
                        GestureDetector(
                          onTap: () {
                            navigateTo(const RegisterView());
                          },
                          child: AppText.richText(
                            'Dont have an account?',
                            ' Register',
                            TextStyle(
                              decoration: TextDecoration.underline,
                              decorationColor: whiteColor,
                              decorationThickness: 2.0,
                              color: whiteColor,
                              fontWeight: FontWeight.w700,
                              fontSize: AppTextSize.mediumFont,
                            ),
                            AppTextStyle.medium(
                              whiteColor,
                            ),
                          ),
                        ),
                        SizedBox(height: 3.h),
                      ],
                    ),
                  )),
                )),
          ],
        ),
      )),
    );
  }
}
