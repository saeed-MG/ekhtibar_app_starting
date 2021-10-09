import 'package:flutter/material.dart';
import 'package:storeapp/constants.dart';


class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.fillColor,
    this.isSelected = false,
  }) : super(key: key);
  final Color fillColor;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2.5),
      padding: EdgeInsets.all(3.0),
      height: 20.0,
      width: 20.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        // color: Colors.black,
        border: Border.all(
            color: isSelected ? kTextLightColor : Colors.transparent),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: fillColor,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
