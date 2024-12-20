import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inputs_to_screen/utils/custom_text_style.dart';

class SignWidget extends StatelessWidget {
  final String text;
  const SignWidget({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: customTextStyle(text: text, fontSize: 30.sp));
  }
}