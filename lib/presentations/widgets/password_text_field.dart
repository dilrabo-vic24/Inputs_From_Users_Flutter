import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool isPasswordVisible;
  final VoidCallback toggleVisibility;
  final String hintText;
  final IconData prefixIcon;

  const PasswordTextField({
    super.key,
    required this.controller,
    required this.isPasswordVisible,
    required this.toggleVisibility,
    required this.hintText,
    required this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        border: const OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 1.h),
        prefixIcon: Icon(
          prefixIcon,
        ),
        suffix: IconButton(
          onPressed: toggleVisibility,
          icon: Icon(
            isPasswordVisible ? Icons.visibility_off : Icons.visibility,
            size: 25.w,
          ),
        ),
      ),
      obscureText: !isPasswordVisible,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Enter $hintText";
        }
        if (value.length < 5) {
          return "$hintText must be 5 character at least";
        }
        return null;
      },
    );
  }
}
