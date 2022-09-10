import 'package:coffee_shop_ui/widgets/small_button.dart';
import 'package:flutter/material.dart';

class AppBarIcon extends StatelessWidget {
  const AppBarIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        SmallButton(
          icon: Icon(Icons.menu),
        ),
        SmallButton(
          decorationImage: DecorationImage(
            image: AssetImage('assets/person.png'),
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
