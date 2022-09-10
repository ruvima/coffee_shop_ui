import 'package:coffee_shop_ui/provider/coffee_list_provider.dart';
import 'package:coffee_shop_ui/utils/coffee_info_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CoffeeList extends ConsumerWidget {
  const CoffeeList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCofee = ref.watch(selectedCoffeeProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: SizedBox(
        height: 30,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: coffeeList.length,
          itemBuilder: (context, index) => Row(
            children: [
              GestureDetector(
                onTap: () {
                  ref
                      .read(selectedCoffeeProvider.notifier)
                      .selectedSwitch(index);
                },
                child: Column(
                  children: [
                    Text(
                      coffeeList[index].toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto-Regular',
                          color: selectedCofee.isSelected &&
                                  selectedCofee.selectedIndex == index
                              ? Colors.orange
                              : Colors.grey.shade600),
                    ),
                    const SizedBox(height: 5),
                    selectedCofee.isSelected &&
                            selectedCofee.selectedIndex == index
                        ? const Icon(
                            Icons.circle,
                            size: 8,
                            color: Colors.orange,
                          )
                        : const SizedBox.shrink(),
                  ],
                ),
              ),
              const SizedBox(
                width: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
