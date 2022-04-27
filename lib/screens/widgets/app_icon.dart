import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final double Size;
  AppIcon(
      {Key? key,
      required this.icon,
      this.backgroundColor = const Color(0xFFfcf4e4),
      this.iconColor = const Color(0xFF756d54),
      this.Size = 40})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Size,
      height: Size,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Size / 2),
          color: backgroundColor),
      child: Icon(
        icon,
        color: iconColor,
        size: 16,
      ),
    );
  }
}
