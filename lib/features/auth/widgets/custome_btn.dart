import 'package:flutter/material.dart';
import 'package:hungry_app/core/constants/app_colors.dart';
import 'package:hungry_app/sheared/custome_text.dart';

class CustomeAuthBtn extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  const CustomeAuthBtn({super.key, this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50,

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: CustomeText(
            text: text,
            size: 18,
            weight: FontWeight.w500,
            color: AppColors.primary,
          ),
        ),
      ),
    );
  }
}
