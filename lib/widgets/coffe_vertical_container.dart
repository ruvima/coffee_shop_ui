import 'dart:ui';

import 'package:flutter/material.dart';

class CoffeVerticalContainer extends StatelessWidget {
  const CoffeVerticalContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = (MediaQuery.of(context).size);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CoffeeBox(size: size),
        //////////////
        CoffeeBox(size: size),
      ],
    );
  }
}

class CoffeeBox extends StatelessWidget {
  const CoffeeBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width / 2.2,
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade600.withOpacity(0.2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red,
              image: const DecorationImage(
                scale: 50,
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/coffee0_0.jpg',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 5),
            child: Text(
              'Cappuccino',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: 'Roboto-Regular',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.0, right: 12.0, bottom: 5),
            child: const Text(
              'With Oat Milk',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Roboto-Regular',
                  fontSize: 10),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      '\$ ',
                      style: TextStyle(color: Colors.orange),
                    ),
                    Text('4.20'),
                  ],
                ),
                Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.orange),
                    child: Icon(
                      Icons.add,
                      size: 15,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
