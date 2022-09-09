import 'package:coffee_shop_ui/routes/route.dart';
import 'package:coffee_shop_ui/screen/details_screen.dart';
import 'package:coffee_shop_ui/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Coffee Shop Ui',
        theme: ThemeData.dark(),
        initialRoute: Routes.homeScreen,
        routes: {
          Routes.homeScreen: (_) => const HomeScreen(),
          Routes.detailsScreen: (_) => const DetailsScreen(),
        });
  }
}
