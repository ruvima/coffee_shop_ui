import 'package:flutter/material.dart';

import 'package:coffee_shop_ui/widgets/coffe_vertical_container.dart';
import 'package:coffee_shop_ui/widgets/coffee_list.dart';
import 'package:coffee_shop_ui/widgets/coffee_special.dart';
import 'package:coffee_shop_ui/widgets/appbar_icon.dart';
import 'package:coffee_shop_ui/widgets/search_bar.dart';
import 'package:coffee_shop_ui/widgets/title_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0C0F14),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                AppBarIcon(),
                SizedBox(height: 20),
                TitleText(),
                SizedBox(height: 20),
                SearchBar(),
                SizedBox(height: 20),
                CoffeeList(),
                SizedBox(height: 20),
                CoffeVerticalContainer(),
                SizedBox(height: 20),
                CoffeeSpecial(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
