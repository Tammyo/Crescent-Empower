import 'widget_export.dart';



Widget barWidget(String text) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Align(
        alignment: Alignment.topLeft,
        child: SizedBox(
          width: 80.w,
          child: AppText.normalText(text, AppTextStyle.bold(deepBlue), 2),
        ),
      ),
      Align(
        alignment: Alignment.topRight,
        child: PopupMenuButton(
            iconSize: 25,
            iconColor: deepBlue,
            color: skyBlue,
            itemBuilder: (context) => [
                  PopupMenuItem(
                      onTap: () async {
                        // allow user to logout
                        final pref = await openBox();
                        await pref.setBool(isUserLoginKey, false);
                        navigateTo(const LoginView());
                      },
                      child: Text(
                        'Log Out',
                        style: AppTextStyle.boldMedium(whiteColor),
                      ))
                ]),
      ),
    ],
  );
}
