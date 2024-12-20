
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inputs_to_screen/utils/app_colors.dart';

class NavigatorRichText extends StatelessWidget {
  final String text1;
  final String text2;
  final Widget navigationScreen;
  const NavigatorRichText({
    super.key,
    required this.navigationScreen, required this.text1, required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => navigationScreen,
            ));
      },
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: text1,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15.sp,
                  color: AppColors.mainColor),
            ),
            TextSpan(
              text: text2,
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.mainColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}