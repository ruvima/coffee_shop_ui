import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget {
  const SmallButton({
    Key? key,
    this.onTap,
    this.icon,
    this.decorationImage,
    this.iconText = false,
    this.iconData = Icons.abc,
    this.text = 'text',
    this.width = 35,
    this.height = 35,
    this.onlyText = false,
  }) : super(key: key);

  final Icon? icon;
  final IconData? iconData;
  final DecorationImage? decorationImage;
  final bool iconText;
  final bool onlyText;
  final String text;
  final double width;
  final double height;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
          image: decorationImage,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            width: 1,
            color: Colors.grey.shade900,
          ),
        ),
        child: iconText
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    iconData,
                    size: 16,
                    color: Colors.orange,
                  ),
                  const SizedBox(height: 2),
                  Text(
                    text,
                    style: TextStyle(
                        fontSize: 10,
                        fontFamily: 'Roboto-Regular',
                        fontWeight: FontWeight.w600,
                        color: Colors.grey),
                  ),
                ],
              )
            : icon,
      ),
    );
  }
}

class SmallLargeButton extends StatelessWidget {
  const SmallLargeButton(
      {Key? key,
      this.width = 90,
      this.height = 30,
      this.bigWord = false,
      this.text = 'text',
      this.fontSize = 10,
      this.onTap,
      this.border,
      this.color = Colors.red,
      this.textColor = Colors.grey})
      : super(key: key);
  final double width;
  final double height;
  final double fontSize;
  final bool bigWord;
  final String text;
  final VoidCallback? onTap;
  final BoxBorder? border;
  final Color textColor;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12),
            border: border),
        child: Text(
          text,
          style: TextStyle(
              fontSize: fontSize,
              fontFamily: 'Roboto-Regular',
              fontWeight: FontWeight.w600,
              color: textColor),
        ),
      ),
    );
  }
}
