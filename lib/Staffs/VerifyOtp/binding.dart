import 'package:cloudi5techonologyattendanceapp/Staffs/VerifyOtp/otpController.dart';
import 'package:get/get.dart';

class OtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Otpcontroller());
  }
}
