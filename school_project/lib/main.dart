import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:school_project/views/global_variables.dart';
import 'package:school_project/views/constant/duration.dart';
import 'package:school_project/controllers/shared_pref.dart';
import 'package:school_project/views/constant/navigation.dart';
import 'package:school_project/views/users_view/nav/home_nav.dart';
import 'package:school_project/views/users_view/auth/login/login_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}
// 09072662502
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return ProviderScope(
          child: MaterialApp(
              debugShowCheckedModeBanner: false,
              navigatorKey: navigateKey,
              home: const EntryPoint()),
        );
      },
    );
  }
}

class EntryPoint extends StatefulWidget {
  const EntryPoint({Key? key}) : super(key: key);

  @override
  State<EntryPoint> createState() => _EntryPointState();
}

class _EntryPointState extends State<EntryPoint> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    wait();
  }

  wait() async {
    await durationSeconds(1, () {});
    getLoginValue();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      globalProvider = ref;
      return ref.watch(ifUserLoginProvider)
          ? const HomeNav()
          : const LoginView();
    });
  }
}

getLoginValue() async {
  final pref = await openBox();
  final bool? loginValue = pref.getBool(isUserLoginKey);
  print('login value $loginValue');
  globalProvider.read(ifUserLoginProvider.notifier).state = loginValue ?? false;
}
