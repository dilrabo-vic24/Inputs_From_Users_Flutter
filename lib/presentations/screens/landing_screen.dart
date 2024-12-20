import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inputs_to_screen/presentations/screens/sign_in_screen.dart';
import 'package:inputs_to_screen/presentations/widgets/circle_decoration.dart';
import 'package:inputs_to_screen/utils/app_colors.dart';
import 'package:inputs_to_screen/utils/app_images.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CircleDecoration(
            color: AppColors.lightPurpleColor,
            left: -98.w,
            top: -196.h,
          ),
          CircleDecoration(
            color: AppColors.mainColor,
            left: 153.w,
            top: -226.h,
          ),
          CircleDecoration(
            color: AppColors.mainColor,
            left: -40.w,
            top: 600.h,
          ),
          CircleDecoration(
            color: AppColors.lightPurpleColor,
            left: 200.w,
            top: 550.h,
          ),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInScreen()));
              },
              child: Positioned(
                child: Image.asset(AppImages.mainImage),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
