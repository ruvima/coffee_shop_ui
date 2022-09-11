import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:coffee_shop_ui/provider/coffee_list_provider.dart';
import 'package:coffee_shop_ui/widgets/small_button.dart';

class CoffeeSize extends ConsumerWidget {
  const CoffeeSize({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedSize = ref.watch(selectedSizeProvider);
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Size',
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                fontFamily: 'Roboto-Regular',
                color: Colors.grey.shade400),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SmallLargeButton(
                border: Border.all(
                  color:
                      selectedSize.isSelected && selectedSize.selectedIndex == 1
                          ? Colors.orange
                          : Colors.grey.shade900,
                ),
                onTap: () {
                  ref.read(selectedSizeProvider.notifier).selectedSwitch(1);
                },
                fontSize: 16,
                height: 35,
                width: 110,
                color: Colors.grey.shade900,
                text: 'S',
              ),
              SmallLargeButton(
                border: Border.all(
                  color:
                      selectedSize.isSelected && selectedSize.selectedIndex == 2
                          ? Colors.orange
                          : Colors.grey.shade900,
                ),
                onTap: () =>
                    ref.read(selectedSizeProvider.notifier).selectedSwitch(2),
                fontSize: 16,
                height: 35,
                width: 110,
                color: Colors.grey.shade900,
                text: 'M',
              ),
              SmallLargeButton(
                border: Border.all(
                  color:
                      selectedSize.isSelected && selectedSize.selectedIndex == 3
                          ? Colors.orange
                          : Colors.grey.shade900,
                ),
                onTap: () {
                  ref.read(selectedSizeProvider.notifier).selectedSwitch(3);
                },
                fontSize: 16,
                height: 35,
                width: 110,
                color: Colors.grey.shade900,
                text: 'L',
              ),
            ],
          )
        ],
      ),
    );
  }
}
