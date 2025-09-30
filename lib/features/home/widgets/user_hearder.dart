import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/core/constants/app_colors.dart';
import 'package:hungry_app/sheared/custome_text.dart';

class UserHeader extends StatelessWidget {
  final String userName;

  const UserHeader({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(35),
            SvgPicture.asset(
              'assets/logo/Hungry_.svg',
              color: AppColors.primary,
              width: 160,
            ),
            const Gap(8),
            CustomeText(
              text: 'Hello, $userName',
              size: 16,
              weight: FontWeight.w600,
              color: Colors.grey.shade600,
            ),
          ],
        ),
        const CircleAvatar(
          radius: 28,
          // backgroundImage: AssetImage(
          //   'assets/test/image 5.png',
          // ),
        ),
      ],
    );
  }
}
