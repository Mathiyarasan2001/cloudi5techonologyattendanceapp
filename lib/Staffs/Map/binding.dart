import 'package:cloudi5techonologyattendanceapp/Staffs/Map/mapController.dart';
import 'package:get/get.dart';

class MapBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MapController());
  }
}
