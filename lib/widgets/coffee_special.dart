import 'package:flutter/material.dart';
import 'package:coffee_shop_ui/widgets/coffe_vertical_container.dart';

class CoffeeSpecial extends StatelessWidget {
  const CoffeeSpecial({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          ' Special for you',
          style: TextStyle(
              fontWeight: FontWeight.w500, fontFamily: 'Roboto-Regular'),
        ),
        const SizedBox(height: 20),
        Container(
          width: 320,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.shade600.withOpacity(0.2),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CoffeeImage(
                index: 1,
                num: 1,
                width: 140,
                height: 140,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  '5 Coffe Beans You\n Must Try!',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto-Regular'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
