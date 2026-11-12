import 'package:flutter/material.dart';

class AppRoundedButton extends StatelessWidget {
  String title;
  double mWidth;
  Color bgColor;
  Color fgColor;
  IconData? icon;
  double roundValue;
  VoidCallback onTap;

  AppRoundedButton({
    required this.title,
    this.mWidth = double.infinity,
    this.bgColor = Colors.amber,
    this.fgColor = Colors.white,
    this.roundValue = 11,
    this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        foregroundColor: fgColor,
        minimumSize: Size(mWidth, 40),
        maximumSize: Size(mWidth, 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(roundValue),
        ),
      ),
      child: icon != null
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(icon), SizedBox(width: 11), Text(title)],
            )
          : Text(title),
    );
  }
}
