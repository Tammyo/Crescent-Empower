import '../counseling_view/export_counseling.dart';

class CareerBuilding extends StatelessWidget {
  const CareerBuilding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:   AppBar(
        title: AppText.normalText(
          'Building',
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
          itemCount: pathControlSurveyor.length,
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
                    pathControlSurveyor[index][0],
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
                        pathControlSurveyor[index][1],
                        AppTextStyle.mediumSmall(
                          skyBlue,
                        ),
                        5,
                      ),
                      AppText.overFlowText(
                        pathControlSurveyor[index][2],
                        AppTextStyle.mediumSmall(
                          skyBlue,
                        ),
                        5,
                      ),
                      pathControlSurveyor[index].length > 3
                          ? AppText.overFlowText(
                              pathControlSurveyor[index][3],
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
