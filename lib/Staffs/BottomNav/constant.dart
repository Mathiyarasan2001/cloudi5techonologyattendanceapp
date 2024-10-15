import 'package:cloudi5techonologyattendanceapp/Staffs/BottomNav/sizeconfig.dart';
import 'package:cloudi5techonologyattendanceapp/Staffs/Leave/LeaveScreen/leaveScreen.dart';
import 'package:cloudi5techonologyattendanceapp/Staffs/Profile/profieScreen.dart';
import 'package:cloudi5techonologyattendanceapp/Staffs/home/clScreen1.dart';
import 'package:cloudi5techonologyattendanceapp/Staffs/timeSheet/timeSheetScreen.dart';
import 'package:flutter/material.dart';

List<Widget> screens = [
  const ClScreen1(),
  const TimeSheetScreen(),
  const LeaveScreen(),
  ProfileScreen()
];

double animatedPositionedLeftValue(int currentIndex) {
  switch (currentIndex) {
    case 0:
      return AppSizes.blockSizeHorizontal * 8.7;
    case 1:
      return AppSizes.blockSizeHorizontal * 32.2;
    case 2:
      return AppSizes.blockSizeHorizontal * 55.7;
    case 3:
      return AppSizes.blockSizeHorizontal * 79.2;
    default:
      return 0;
  }
}

final List<Color> gradient = [
  Color(0xff34346D).withOpacity(.3),
  Colors.grey.withOpacity(.2),
  Colors.transparent,
];
