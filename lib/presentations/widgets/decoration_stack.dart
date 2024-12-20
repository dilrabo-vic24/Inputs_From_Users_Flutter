import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inputs_to_screen/utils/app_colors.dart';
import 'package:inputs_to_screen/utils/custom_text_style.dart';

class DecorationStack extends StatelessWidget {
  const DecorationStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -88,
          left: 250,
          child: Container(
            height: 128.h,
            width: 128.w,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.mainColor,
            ),
          ),
        ),
        Positioned(
          top: -48,
          left: 300,
          child: Container(
            height: 128.h,
            width: 128.w,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.lightPurpleColor,
            ),
          ),
        ),
        Positioned(
            top: 40.h,
            left: 20.w,
            child: Row(
              children: [
                const Icon(
                  Icons.arrow_back_ios_new,
                  color: AppColors.mainColor,
                ),
                customTextStyle(
                  text: "Back",
                  fontSize: 12.sp,
                ),
              ],
            ))
      ],
    );
  }
}
