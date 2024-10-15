import 'package:cloudi5techonologyattendanceapp/Staffs/Profile/profileController.dart';
import 'package:get/get.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProfileController());
  }
}
