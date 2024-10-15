import 'package:cloudi5techonologyattendanceapp/Staffs/Login/loginController.dart';
import 'package:get/get.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Logincontroller());
  }
}
