import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

String isUserLoginKey = "isUserLoginKey";
final ifUserLoginProvider = StateProvider((ref) => false);
//

openBox() async {
  final SharedPreferences pref = await SharedPreferences.getInstance();

  return pref;
}

isUserLogIn() async {
  final pref = await openBox();
  await pref.setBool(isUserLoginKey, false);
}
