import 'package:flutter/material.dart';

class AppIconRoundWidget extends StatelessWidget {
  Color bgColor;
  Color fgColor;
  IconData icon;
  double size;
  double iconSize;

  AppIconRoundWidget({
    required this.icon,
    this.bgColor = Colors.white,
    this.fgColor = Colors.black,
    this.size = 40,
    this.iconSize = 22,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(shape: BoxShape.circle, color: bgColor),
      child: Center(
        child: Icon(icon, color: fgColor, size: iconSize),
      ),
    );
  }
}
