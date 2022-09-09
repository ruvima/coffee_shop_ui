import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget {
  const SmallButton({
    Key? key,
    this.icon,
    this.decorationImage,
  }) : super(key: key);

  final Icon? icon;
  final DecorationImage? decorationImage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () {},
      child: Ink(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          image: decorationImage,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            width: 1,
            color: Colors.grey.shade900,
          ),
        ),
        child: icon,
      ),
    );
  }
}
