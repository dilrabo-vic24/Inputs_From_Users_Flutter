import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inputs_to_screen/presentations/screens/sign_in_screen.dart';
import 'package:inputs_to_screen/presentations/widgets/confirm_password_text_field.dart';
import 'package:inputs_to_screen/presentations/widgets/decoration_stack.dart';
import 'package:inputs_to_screen/presentations/widgets/navigator_rich_text.dart';
import 'package:inputs_to_screen/presentations/widgets/password_text_field.dart';
import 'package:inputs_to_screen/presentations/widgets/sample_text_field.dart';
import 'package:inputs_to_screen/presentations/widgets/sign_button.dart';
import 'package:inputs_to_screen/presentations/widgets/sign_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;
  bool isPasswordVisible = false;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(
                height: 120.h,
                child: const DecorationStack(),
              ),
              Padding(
                padding: EdgeInsets.all(15.w),
                child: Column(
                  children: [
                    const SignWidget(text: "Sign Up"),
                    SizedBox(height: 25.h),
                    SampleTextField(
                      controller: nameController,
                      prefixIcon: Icons.person_2_outlined,
                      hintText: "Full Name",
                    ),
                    SizedBox(height: 20.h),
                    SampleTextField(
                      controller: emailController,
                      prefixIcon: Icons.email_outlined,
                      hintText: "Email",
                    ),
                    SizedBox(height: 20.h),
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
                    ConfirmPasswordTextField(
                      controller: confirmPasswordController,
                      isPasswordVisible: isPasswordVisible,
                      toggleVisibility: () {
                        setState(
                          () {
                            isPasswordVisible = !isPasswordVisible;
                          },
                        );
                      },
                      hintText: "Confirm Password",
                      prefixIcon: Icons.lock_outline,
                    ),
                    SizedBox(height: 60.h),
                    SignButton(
                      formKey: formKey,
                      emailController: emailController,
                      passwordController: passwordController,
                      nameController: nameController,
                      confirmPasswordController: confirmPasswordController,
                      text: "Sign Up",
                      // navigatorScreen: const LandingScreen(),
                    ),
                    SizedBox(height: 100.h),
                    const NavigatorRichText(
                      text1: "Already have an account? ",
                      text2: "Sign in",
                      navigationScreen: SignInScreen(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
