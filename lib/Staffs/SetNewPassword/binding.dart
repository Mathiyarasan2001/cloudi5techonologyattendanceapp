import 'package:cloudi5techonologyattendanceapp/Staffs/SetNewPassword/setNewPasswordController.dart';
import 'package:get/get.dart';

class SetNewPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SetPasswordController());
  }
}
