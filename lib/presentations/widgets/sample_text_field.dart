import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SampleTextField extends StatelessWidget {
  final IconData prefixIcon;
  final String hintText;
  final TextEditingController controller;

  const SampleTextField({
    super.key,
    required this.controller,
    required this.prefixIcon,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(prefixIcon),
        border: const OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.w),
      ),
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
