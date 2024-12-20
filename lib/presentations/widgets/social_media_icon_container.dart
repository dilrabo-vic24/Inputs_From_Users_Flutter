import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialMediaIconCard extends StatelessWidget {
  final String imageUrl;
  const SocialMediaIconCard({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        border: Border.all(
          color: Colors.grey,
          width: 2.w,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 4.r,
            blurRadius: 7.r,
            offset: Offset(0, 3.h),
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(8.w),
        child: Image.asset(imageUrl),
      ),
    );
  }
}