import 'package:cloudi5techonologyattendanceapp/Staffs/Leave/LeaveScreen/leaveControler.dart';
import 'package:get/get.dart';

class LeaveBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LeaveController());
  }
}
