import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/features/home/widgets/card_item.dart';
import 'package:hungry_app/features/home/widgets/food_catgury.dart';
import 'package:hungry_app/features/home/widgets/search_field.dart';
import 'package:hungry_app/features/home/widgets/user_hearder.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> categories = ['ALL', 'Combos', 'Sliders', 'Classic'];
  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              floating: false,
              elevation: 0,
              scrolledUnderElevation: 0,
              toolbarHeight: 180,
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              flexibleSpace: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Column(
                  children: [
                    UserHeader(userName: 'Maha'),
                    Gap(10),
                    SearchField(),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: FoodCatgury(
                  categories: categories,
                  selectedItem: selectedItem,
                ),
              ),
            ),

            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate((ctx, index) {
                  return CardItem(
                    image: 'assets/test/image 5.png',
                    title: 'Cheeseburger',
                    desc: 'Wensdy Burger',
                    rating: '4.2',
                  );
                }, childCount: 10),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.72,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
