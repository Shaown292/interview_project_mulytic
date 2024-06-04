import 'package:flutter/material.dart';
import 'package:untitled2/consts/app_text_style.dart';

class CustomTextFormField extends StatelessWidget {
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController controller;
  final Function()? onTap;
  final bool obsCureText;
  final String? hintText;

  const CustomTextFormField(
      {super.key,
        this.prefixIcon,
        required this.controller,
        this.onTap,
        this.obsCureText = false,
        this.hintText,
        this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: TextFormField(
        controller: controller,
        obscureText: obsCureText,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(8)),
            prefixIcon:  Icon(prefixIcon),
            hintStyle: AppTextStyle.robotoHintTextW400Size17,
            hintText: hintText,
            suffixIcon: suffixIcon ?? const SizedBox()),
      ),
    );
  }
}