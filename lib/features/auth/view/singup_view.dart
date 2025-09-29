import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/core/constants/app_colors.dart';
import 'package:hungry_app/features/auth/widgets/custome_btn.dart';
import 'package:hungry_app/sheared/custome_textfield.dart';

class SingupView extends StatefulWidget {
  const SingupView({super.key});

  @override
  State<SingupView> createState() => _SingupViewState();
}

class _SingupViewState extends State<SingupView> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confiremPassController = TextEditingController();
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Gap(100),
                SvgPicture.asset('assets/logo/Hungry_.svg'),
                Gap(40),
                CustomeTextField(
                  hint: 'User Name',
                  isPassword: false,
                  controller: nameController,
                ),
                Gap(20),
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
                Gap(20),
                CustomeTextField(
                  hint: 'confirem Password',
                  isPassword: true,
                  controller: confiremPassController,
                ),
                Gap(30),
                CustomeAuthBtn(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      print('login success');
                    }
                  },
                  text: 'SignUp',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
