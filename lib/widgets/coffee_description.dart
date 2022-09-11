import 'package:flutter/material.dart';

class CoffeeDescription extends StatelessWidget {
  const CoffeeDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Description',
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                fontFamily: 'Roboto-Regular',
                color: Colors.grey.shade400),
          ),
          const SizedBox(height: 10),
          RichText(
            text: TextSpan(
              style: const TextStyle(color: Colors.black, fontSize: 36),
              children: [
                TextSpan(
                  text:
                      'A cappuccino is a coffee-based drink made primarily from espresso and milk',
                  style: TextStyle(
                      fontSize: 15, color: Colors.grey.shade400, height: 1.5),
                ),
                const TextSpan(
                  text: '...Read More ',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.orange,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
