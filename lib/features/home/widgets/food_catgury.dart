import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hungry_app/core/constants/app_colors.dart';
import 'package:hungry_app/sheared/custome_text.dart';

class FoodCatgury extends StatefulWidget {
  List<String> categories = ['ALL', 'Combos', 'Sliders', 'Classic'];
  final int selectedItem;
  FoodCatgury({
    super.key,
    required this.categories,
    required this.selectedItem,
  });

  @override
  State<FoodCatgury> createState() => _FoodCatguryState();
}

class _FoodCatguryState extends State<FoodCatgury> {
  late int selectedItem;

  @override
  void initState() {
    selectedItem = widget.selectedItem;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.categories.length,
        itemBuilder: (ctx, index) {
          final isSelected = selectedItem == index;
          return GestureDetector(
            onTap: () {
              setState(() => selectedItem = index);
            },
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.primary : const Color(0xffF3F4F6),
                borderRadius: BorderRadius.circular(20),
              ),
              child: CustomeText(
                text: widget.categories[index],
                weight: FontWeight.w500,
                color: isSelected ? Colors.white : Colors.black87,
              ),
            ),
          );
        },
      ),
    );
  }
}
