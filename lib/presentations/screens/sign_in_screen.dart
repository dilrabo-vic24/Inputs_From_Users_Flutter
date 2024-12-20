import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inputs_to_screen/presentations/screens/sign_up_screen.dart';
import 'package:inputs_to_screen/presentations/widgets/logo_picture.dart';
import 'package:inputs_to_screen/presentations/widgets/navigator_rich_text.dart';
import 'package:inputs_to_screen/presentations/widgets/password_text_field.dart';
import 'package:inputs_to_screen/presentations/widgets/sample_text_field.dart';
import 'package:inputs_to_screen/presentations/widgets/sign_button.dart';
import 'package:inputs_to_screen/presentations/widgets/sign_widget.dart';
import 'package:inputs_to_screen/presentations/widgets/social_media_icons.dart';
import 'package:inputs_to_screen/utils/custom_text_style.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  bool isPasswordVisible = true;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.w),
          child: Form(
            key: formKey,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 30.h),
                const LogoPicture(), //widget for picture
                const SignWidget(
                  text: "Sign in",
                ), //sign in widget
                SizedBox(height: 20.h),
                //email uchun TextFormField
                SampleTextField(
                  controller: emailController,
                  hintText: "Email or User Name",
                  prefixIcon: Icons.person_2_outlined,
                ),
                SizedBox(height: 20.h),

                //TextFormField for password
                PasswordTextField(
                  controller: passwordController,
                  isPasswordVisible: isPasswordVisible,
                  toggleVisibility: () {
                    setState(
                      () {
                        isPasswordVisible = !isPasswordVisible;
                      },
                    );
                  },
                  hintText: "Password",
                  prefixIcon: Icons.lock_outline,
                ),
                SizedBox(height: 20.h),
                Align(
                  alignment: Alignment.centerRight,
                  child: customTextStyle(
                    text: "Forget Password?",
                    fontSize: 15.sp,
                  ),
                ),
                SizedBox(height: 30.h),
                //sign in button
                SignButton(
                  text: "Sign in",
                  formKey: formKey,
                  emailController: emailController,
                  passwordController: passwordController,
                  navigatorScreen: const SignUpScreen(),
                ),
                SizedBox(height: 40.h),
                customTextStyle(
                  text: "Or sign in With",
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                ),
                SizedBox(height: 20.h),
                //social media icons container
                const SocialMediaIcons(),
                SizedBox(height: 80.h),
                const NavigatorRichText(
                  navigationScreen: SignUpScreen(),
                  text1: "Don't have an account?",
                  text2: " Sign up",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
