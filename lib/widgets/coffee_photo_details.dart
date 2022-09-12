import 'package:coffee_shop_ui/widgets/coffe_vertical_container.dart';
import 'package:coffee_shop_ui/widgets/small_button.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class CoffeePhotoDetails extends StatelessWidget {
  const CoffeePhotoDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = (MediaQuery.of(context).size);

    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height / 1.6,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
            ),
            image: DecorationImage(
              image: AssetImage(
                'assets/coffee0_0.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SmallButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.grey.shade600,
                ),
                onTap: () => Navigator.pop(context),
              ),
              SmallButton(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.grey.shade600,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: BackdropFilter(
              filter: ui.ImageFilter.blur(
                sigmaX: 10.0,
                sigmaY: 10.0,
              ),
              child: Container(
                width: size.width,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.grey.shade900.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Cappucino',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto-Regular',
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'With Oat Milk',
                            style: TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto-Regular',
                            ),
                          ),
                          const SizedBox(height: 15),
                          const RatingStar(
                            count: true,
                            size: 19,
                            fontSize: 16,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Column(
                          children: [
                            Row(
                              children: const [
                                SmallButton(
                                  iconText: true,
                                  iconData: Icons.coffee,
                                  width: 42,
                                  height: 42,
                                  text: 'Coffee',
                                ),
                                SizedBox(width: 12),
                                SmallButton(
                                  width: 42,
                                  height: 42,
                                  iconText: true,
                                  iconData: Icons.water_drop,
                                  text: 'Milk',
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            SmallLargeButton(
                              width: 96,
                              text: 'Medium Roasted',
                              color: Colors.grey.shade900,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
