import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/core/constants/app_colors.dart';
import 'package:hungry_app/features/auth/widgets/custome_btn.dart';
import 'package:hungry_app/sheared/custome_text.dart';
import 'package:hungry_app/sheared/custome_textfield.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),

      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Gap(100),
                  SvgPicture.asset('assets/logo/Hungry_.svg'),
                  Gap(25),
                  CustomeText(
                    text: 'Welcome Back To Hungry App',
                    color: Colors.white,
                    weight: FontWeight.w500,
                    size: 13,
                  ),
                  Gap(70),

                  CustomeTextField(
                    hint: 'Email',
                    isPassword: false,
                    controller: emailController,
                  ),
                  Gap(20),
                  CustomeTextField(
                    hint: 'Password',
                    isPassword: true,
                    controller: passwordController,
                  ),
                  Gap(30),
                  CustomeAuthBtn(
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        print('login success');
                      }
                    },
                    text: 'Login',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
