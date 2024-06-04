import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/consts/app_color.dart';
import 'package:untitled2/consts/app_text_style.dart';
import 'package:untitled2/consts/static_text/static_text.dart';
import 'package:untitled2/controller/registration_controller.dart';
import 'package:untitled2/widgets/custom_button.dart';
import 'package:untitled2/widgets/custom_text_feild.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
              Text(
                DynamicText.registration,
                style: AppTextStyle.robotoBlackW700Size25,
              ),
              SizedBox(
                height: Get.height * 0.05,
              ),
              CustomTextFormField(
                controller: RegistrationController().emailTextController,
                hintText: "Email",
                prefixIcon: Icons.mail_outline,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                controller: RegistrationController().userTypeTextController,
                hintText: "User Type",
                prefixIcon: Icons.person,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                controller: RegistrationController().passwordTextController,
                hintText: "Password",
                prefixIcon: Icons.key,
                // suffixIcon: Image.asset("assets/images/eyes.png"),
              ),
              const SizedBox(
                height: 20,
              ),

              CustomTextFormField(
                controller: RegistrationController().confirmPasswordController,
                hintText: "Confirm Password",
                prefixIcon: Icons.key,
                // suffixIcon: Image.asset("assets/images/eyes.png"),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                controller: RegistrationController().tcController,
                hintText: "TC",
                prefixIcon: Icons.abc,
                // suffixIcon: Image.asset("assets/images/eyes.png"),
              ),
              const SizedBox(
                height: 50,
              ),
              CustomButton(
                onTap: () {
                  RegistrationController().postData();
                },
                color: AppColors.logInButtonColor,
                height: 60,
                width: Get.width,
                text: DynamicText.registration,
                textStyle: AppTextStyle.robotoWhiteTextW500Size17,
              ),
              const SizedBox(height: 50,),


            ],
          ),
        ),
      ),
    );
  }
}
