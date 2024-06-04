import 'package:get/get.dart';
import 'package:untitled2/bindings/HomeBinding.dart';
import 'package:untitled2/bindings/log_in_screen_bidings.dart';
import 'package:untitled2/bindings/registration_bindings.dart';
import 'package:untitled2/view/homeView.dart';
import 'package:untitled2/view/log_in.dart';
import 'package:untitled2/view/registration_screen.dart';



part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOG_IN_SCREEN;

  static final routes = [

    GetPage(
      name: _Paths.LOG_IN_SCREEN,
      page: () => const LogInScreenView(),
      binding: LogInScreenBinding(),
    ),

    GetPage(
      name: _Paths.REGISTRATION,
      page: () => const RegistrationScreen(),
      binding: RegistrationBindings(),
    ),

    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),

  ];
}