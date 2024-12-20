import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inputs_to_screen/utils/app_images.dart';

class LogoPicture extends StatelessWidget {
  const LogoPicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        AppImages.mainImage,
        height: 120.h,
        width: 120.w,
      ),
    );
  }
}