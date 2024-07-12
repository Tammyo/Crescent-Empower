import 'package:flutter/material.dart';

// this handles the app duration where some part of the
// app needs to wait for some time before navigating to next screen

var durationTwoSec = const Duration(seconds: 2);
var durationThreeSec = const Duration(seconds: 3);
var durationFourSec = const Duration(seconds: 4);
var durationFiveSec = const Duration(seconds: 5);


durationSeconds(
  int durationTime,
  VoidCallback callBack,
) {
 return Future.delayed(Duration(seconds: durationTime), callBack);
}

durationMin(
  int durationTime,
  VoidCallback callBack,
) {
 return Future.delayed(Duration(minutes: durationTime), callBack);
}
