import '../career_view/export_career.dart';

class CareerSoftware extends StatelessWidget {
  const CareerSoftware({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppText.normalText(
          'Software development',
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
          itemCount: pathJavaDev.length,
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
                    pathJavaDev[index][0],
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
                        pathJavaDev[index][1],
                        AppTextStyle.mediumSmall(
                          skyBlue,
                        ),
                        5,
                      ),
                      AppText.overFlowText(
                        pathJavaDev[index][2],
                        AppTextStyle.mediumSmall(
                          skyBlue,
                        ),
                        5,
                      ),
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
