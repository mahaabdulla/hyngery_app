import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/core/constants/app_colors.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Gap(200),
            SvgPicture.asset('assets/logo/Hungry_.svg'),
            Spacer(),
            Image.asset('assets/splash/splash_view.png'),
          ],
        ),
      ),
    );
  }
}
