import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inputs_to_screen/presentations/screens/landing_screen.dart';
// import 'package:inputs_to_screen/presentations/screens/sign_in_screen.dart';
// import 'package:inputs_to_screen/presentations/screens/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(
        360,
        690,
      ),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Flutter Demo',
        home: LandingScreen(),
      ),
    );
  }
}
