import 'package:coffee_shop_ui/provider/coffee_list_provider.dart';
import 'package:coffee_shop_ui/utils/coffee_info_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CoffeVerticalContainer extends StatelessWidget {
  const CoffeVerticalContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        CoffeeBox(
          num: 0,
          description: 'With Oat Milk',
          price: 4.20,
        ),
        CoffeeBox(
          num: 1,
          description: 'With Oat Chocolat',
          price: 3.14,
        ),
      ],
    );
  }
}

class CoffeeBox extends ConsumerWidget {
  const CoffeeBox({
    required this.num,
    required this.price,
    required this.description,
    Key? key,
  }) : super(key: key);
  final int num;
  final double price;
  final String description;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCofee = ref.watch(selectedCoffeeProvider);
    final size = (MediaQuery.of(context).size);

    return Container(
      width: size.width / 2.3,
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade600.withOpacity(0.2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CoffeeImage(
            num: num,
            index: selectedCofee.selectedIndex,
            height: 120,
            star: true,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 5),
            child: Text(
              coffeeList[selectedCofee.selectedIndex],
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: 'Roboto-Regular',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 5),
            child: Text(
              description,
              style: const TextStyle(
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
                    const Text(
                      '\$ ',
                      style: TextStyle(color: Colors.orange),
                    ),
                    Text(price.toString()),
                  ],
                ),
                Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.orange),
                    child: const Icon(
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

class CoffeeImage extends StatelessWidget {
  const CoffeeImage(
      {Key? key,
      required this.index,
      required this.num,
      this.star = false,
      this.width,
      this.height})
      : super(key: key);
  final int index;
  final int num;
  final double? height;
  final double? width;
  final bool star;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                Image(
                  image: AssetImage(
                    'assets/coffee${num}_$index.jpg',
                  ),
                  width: constraints.maxWidth,
                  height: constraints.maxHeight,
                  fit: BoxFit.cover,
                ),
                star
                    ? Container(
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(20)),
                          color: Colors.grey.shade900.withOpacity(0.7),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.star,
                              size: 12,
                              color: Colors.orange,
                            ),
                            Text(
                              ' 3.5',
                              style:
                                  TextStyle(fontFamily: 'Roboto', fontSize: 12),
                            )
                          ],
                        ),
                      )
                    : SizedBox.shrink(),
              ],
            );
          },
        ));
  }
}

//  Container(
//             alignment: Alignment.topRight,
//             height: 20,
//             width: 50,
//             decoration: BoxDecoration(
//               borderRadius:
//                   const BorderRadius.only(bottomLeft: Radius.circular(20)),
//               color: Colors.grey.shade600.withOpacity(0.2),
//             ),
//             child: Icon(Icons.star),
//           ),
