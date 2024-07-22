import '../counseling_view/export_counseling.dart';

class CareerActScience extends StatelessWidget {
  const CareerActScience({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppText.normalText(
          'Actuarial Science',
          AppTextStyle.medium(
            deepBlue,
          ),
          1,
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ListView.builder(
          itemCount: pathActuarialScience.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: offWhite,
                    width: 0.06.dp,
                  ),
                  borderRadius: BorderRadius.circular(10.sp),
                ),
                child: ListTile(
                  title: AppText.normalText(
                    pathActuarialScience[index][0],
                    AppTextStyle.medium(
                      deepBlue,
                    ),
                    2,
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AppText.overFlowText(
                        pathActuarialScience[index][1],
                        AppTextStyle.mediumSmall(
                          skyBlue,
                        ),
                        5,
                      ),
                      AppText.overFlowText(
                        pathActuarialScience[index][2],
                        AppTextStyle.mediumSmall(
                          skyBlue,
                        ),
                        5,
                      ),
                      pathActuarialScience[index].length > 3
                          ? AppText.overFlowText(
                              pathActuarialScience[index][3],
                              AppTextStyle.mediumSmall(
                                skyBlue,
                              ),
                              5,
                            )
                          : const SizedBox.shrink(),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
