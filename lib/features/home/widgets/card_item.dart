import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/core/constants/app_colors.dart';
import 'package:hungry_app/sheared/custome_text.dart';

class CardItem extends StatelessWidget {
  final String image, title, desc, rating;
  const CardItem({
    super.key,
    required this.image,
    required this.title,
    required this.desc,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image, height: 120),
            Gap(8),
            CustomeText(text: title, weight: FontWeight.w700),
            CustomeText(text: desc, weight: FontWeight.w400),
            Gap(8),
            Row(
              children: [
                Icon(CupertinoIcons.star_fill, color: Colors.amber, size: 15),
                Gap(5),
                CustomeText(text: rating, weight: FontWeight.w700),
                Spacer(),
                Icon(
                  CupertinoIcons.heart_fill,
                  color: AppColors.primary,
                  size: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
