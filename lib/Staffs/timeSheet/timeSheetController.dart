import 'package:get/get.dart';

class TimeSheetController extends GetxController {
  var selectedDate = DateTime.now().obs;

  void incrementDate() {
    selectedDate.value = selectedDate.value.add(const Duration(days: 1));
  }

  void decrementDate() {
    selectedDate.value = selectedDate.value.subtract(const Duration(days: 1));
  }
}