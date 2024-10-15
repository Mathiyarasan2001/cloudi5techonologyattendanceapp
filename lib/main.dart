import 'package:cloudi5techonologyattendanceapp/Staffs/BottomNav/finalview.dart';
import 'package:cloudi5techonologyattendanceapp/Staffs/Login/loginScreen.dart';
import 'package:cloudi5techonologyattendanceapp/Staffs/customWidgets/themeData.dart';
import 'package:cloudi5techonologyattendanceapp/Staffs/timeSheet/timeSheetScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cloudi5 Attendance App',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      home: const TimeSheetScreen(),
    );
  }
}
