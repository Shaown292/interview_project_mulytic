import 'package:get/get.dart';
import 'package:untitled2/controller/log_in_controller.dart';


class LogInScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LogInScreenController>(
          () => LogInScreenController(),
    );
  }
}