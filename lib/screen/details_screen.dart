import 'package:coffee_shop_ui/widgets/coffee_size.dart';
import 'package:coffee_shop_ui/widgets/small_button.dart';
import 'package:flutter/material.dart';
import 'package:coffee_shop_ui/widgets/coffee_description.dart';
import 'package:coffee_shop_ui/widgets/coffee_photo_details.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0C0F14),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CoffeePhotoDetails(),
            SizedBox(height: 10),
            CoffeeDescription(),
            CoffeeSize(),
            SizedBox(height: 10),
            CoffePay(),
          ],
        ),
      ),
    );
  }
}

class CoffePay extends StatelessWidget {
  const CoffePay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = (MediaQuery.of(context).size);
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Price',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto-Regular',
                      color: Colors.grey.shade400),
                ),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(color: Colors.black, fontSize: 36),
                    children: [
                      const TextSpan(
                        text: '\$ ',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Roboto-Regular',
                            color: Colors.orange,
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: '4.20',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Roboto-Regular',
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SmallLargeButton(
              width: size.width / 1.5,
              height: 45,
              bigWord: true,
              text: 'Buy Now',
              fontSize: 18,
              textColor: Colors.white,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
