import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inputs_to_screen/utils/app_colors.dart';
import 'package:inputs_to_screen/utils/custom_text_style.dart';

// ignore: must_be_immutable
class SignButton extends StatelessWidget {
  final String text;
  Widget? navigatorScreen;
  SignButton({
    super.key,
    required this.formKey,
    TextEditingController? emailController,
    TextEditingController? passwordController,
    TextEditingController? nameController,
    TextEditingController? confirmPasswordController,
    required this.text,
    this.navigatorScreen,
  });

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (formKey.currentState!.validate()) {
          log("${formKey.currentContext}");
          if (navigatorScreen != null) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => navigatorScreen!));
                log("You entered ssystem successfully");
          }
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.lightPurpleColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        minimumSize: Size(double.infinity, 40.h),
      ),
      child: customTextStyle(
        text: text,
        textColor: AppColors.whiteColor,
        fontSize: 15.sp,
      ),
    );
  }
}
