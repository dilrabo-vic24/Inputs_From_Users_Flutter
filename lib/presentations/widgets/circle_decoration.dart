import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleDecoration extends StatelessWidget {
  final Color color;
  final double top;
  final double left;

  const CircleDecoration({
    super.key,
    required this.top,
    required this.left,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: Container(
        width: 300.w,
        height: 300.h,
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      ),
    );
  }
}