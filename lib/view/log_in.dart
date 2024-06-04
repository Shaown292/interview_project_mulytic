import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/consts/app_color.dart';
import 'package:untitled2/consts/app_text_style.dart';
import 'package:untitled2/consts/static_text/static_text.dart';
import 'package:untitled2/controller/log_in_controller.dart';
import 'package:untitled2/view/registration_screen.dart';
import 'package:untitled2/widgets/custom_button.dart';
import 'package:untitled2/widgets/custom_text_feild.dart';

class LogInScreenView extends GetView<LogInScreenController> {
  const LogInScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.1,
              ),
              Text("Demo Log in Screen", style: AppTextStyle.robotoPrimary700Size25,),
              SizedBox(
                height: Get.height * 0.1,
              ),
              Text(
                DynamicText.signIn,
                style: AppTextStyle.robotoBlackW700Size25,
              ),
              SizedBox(
                height: Get.height * 0.05,
              ),
              CustomTextFormField(
                controller: controller.emailTextController,
                hintText: "Email",
                prefixIcon: Icons.mail_outline,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                controller: controller.passwordTextController,
                hintText: "Password",
                prefixIcon: Icons.key,
                // suffixIcon: Image.asset("assets/images/eyes.png"),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                controller: controller.userTypeTextController,
                hintText: "User Type",
                prefixIcon: Icons.person,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.centerRight,
                child: Text(
                  DynamicText.forgetPassword,
                  style: AppTextStyle.robotoGreyTextW400Size13,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              CustomButton(
                onTap: () {
                  controller.postData();
                },
                color: AppColors.logInButtonColor,
                height: 60,
                width: Get.width,
                text: DynamicText.logIn,
                textStyle: AppTextStyle.robotoWhiteTextW500Size17,
              ),
              const SizedBox(height: 50,),
              InkWell(
                onTap: () => Get.to(RegistrationScreen()),
                child: Text(
                  DynamicText.createAccount,
                  style: AppTextStyle.robotoBlackW700Size25,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
