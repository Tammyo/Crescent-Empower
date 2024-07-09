import '../controller_export.dart';

// ignore_for_file: use_build_context_synchronously


class RegisterMainControl {
  static Future<void> networkStatus() async {
    bool result = await InternetConnectionChecker().hasConnection;
    if (RegisterInput.userName.text.isEmpty ||
        RegisterInput.userPassword.text.isEmpty) {
      showCustomSnackBar(context, 'Inputs are required!!');
    } else {
      if (result == true) {
        saveRegisterInfo();
        showLoadingView();
        await durationSeconds(5, () {});
        popScreen();
        showMessageView();
        await durationSeconds(2, () {});
        RegisterInput.userName.clear();
        RegisterInput.userPassword.clear();
        navigateTo(const LoginView());
      } else {
        showCustomSnackBar(context, 'No internet connection!!');
      }
    }
  }

  //save the user register details
  static saveRegisterInfo() async {
    final pref = await openBox();
    await pref.setString(loginUserNameKey, RegisterInput.userName.text);
    await pref.setString(loginPasswordNameKey, RegisterInput.userPassword.text);
  }

  static showLoadingView() {
    myDialog(Center(
      child: SpinKitPouringHourGlassRefined(
        color: deepBlue,
        size: 50.sp,
      ),
    ));
  }

  static showMessageView() {
    myDialog(Center(
        child: Text(
      'Registration Successful You can LogIn now',
      textAlign: TextAlign.center,
      style: AppTextStyle.medium(
        skyBlue,
      ),
    )));
  }
}
