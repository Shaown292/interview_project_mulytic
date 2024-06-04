import 'package:get/get.dart';
import 'package:untitled2/controller/home_controller.dart';


class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
          () => HomeController(),
    );
  }
}