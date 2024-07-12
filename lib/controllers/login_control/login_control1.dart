import '../controller_export.dart';

// ignore_for_file: use_build_context_synchronously

// controllers for the login page

class LoginMainControl {
  static Future<void> networkStatus() async {
    bool result = await InternetConnectionChecker().hasConnection;
    if (LoginInput.userName.text.isEmpty ||
        LoginInput.userPassword.text.isEmpty) {
      showCustomSnackBar(context, 'Inputs are required!!');
    } else {
      if (result == true) {
        showLoadingView();
        confirmLoginInfo();
      } else {
        showCustomSnackBar(context, 'No internet connection!!');
      }
    }
  }

// show a loading animation
  static showLoadingView() {
    myDialog(Center(
      child: SpinKitPouringHourGlassRefined(
        color: deepBlue,
        size: 50.sp,
      ),
    ));
  }

// confirm if the password and username entered by user its correct
  static confirmLoginInfo() async {
    final pref = await openBox();

    final String? userName = pref.getString(
      loginUserNameKey,
    );
    final String? userPassword = pref.getString(
      loginPasswordNameKey,
    );
    if (LoginInput.userName.text == userName &&
        LoginInput.userPassword.text == userPassword) {
      await durationSeconds(2, () {});
      popScreen();
      navigateTo(const HomeNav());
      LoginInput.userName.clear();
      LoginInput.userPassword.clear();
      await pref.setBool(isUserLoginKey, true);
    } else {
      await durationSeconds(2, () {});
      popScreen();
      showMessageView();
      await durationSeconds(2, () {});
      navigateTo(const LoginView());
    }
  }

  static showMessageView() {
    myDialog(Center(
      child: AppText.normalText(
          'Password or username incorrect!!',
          AppTextStyle.medium(
            skyBlue,
          ),
          2),
    ));
  }
}
