import 'package:get/get.dart';
import 'package:untitled2/controller/registration_controller.dart';


class RegistrationBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(()=>RegistrationController());
  }
}