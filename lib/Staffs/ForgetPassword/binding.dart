import 'package:cloudi5techonologyattendanceapp/Staffs/ForgetPassword/fogetController.dart';
import 'package:get/get.dart';

class ForgetPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ForgetPasswordController());
  }
}
