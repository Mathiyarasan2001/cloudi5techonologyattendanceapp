import 'package:cloudi5techonologyattendanceapp/Staffs/timeSheet/timeSheetController.dart';
import 'package:get/get.dart';

class TimesheetBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(TimeSheetController());
  }
}
