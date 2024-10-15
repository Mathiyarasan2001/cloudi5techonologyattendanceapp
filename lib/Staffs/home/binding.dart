import 'package:cloudi5techonologyattendanceapp/Staffs/home/homeController.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Homecontroller());
  }
}
