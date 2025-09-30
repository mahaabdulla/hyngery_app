import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/core/constants/app_colors.dart';
import 'package:hungry_app/sheared/custome_text.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List categuries = ['ALL', 'Combos', 'Sliders', 'Classic'];
  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23),
          child: Column(
            children: [
              Gap(50),
              // headers
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        'assets/logo/Hungry_.svg',
                        color: AppColors.primary,
                        width: 180,
                      ),
                      Gap(10),
                      CustomeText(
                        text: 'Hello, Rich Sonic',
                        size: 16,
                        weight: FontWeight.w700,
                        color: Colors.grey.shade500,
                      ),
                    ],
                  ),
                  Spacer(),
                  CircleAvatar(radius: 31),
                ],
              ),

              Gap(20),
              Material(
                elevation: 2,
                shadowColor: Colors.grey,
                borderRadius: BorderRadius.circular(15),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search ..',
                    prefixIcon: Icon(CupertinoIcons.search),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Gap(25),

              // sliders
              SizedBox(
                height: 50,

                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categuries.length,
                  itemBuilder: (ctx, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedItem = index;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        padding: EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color:
                              selectedItem == index
                                  ? AppColors.primary
                                  : Color(0xffF3F4F6),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: CustomeText(
                          weight: FontWeight.w500,
                          text: categuries[index],
                          color:
                              selectedItem == index
                                  ? Colors.white
                                  : Colors.black54,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
