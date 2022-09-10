import 'package:flutter/material.dart';
import 'package:homework2/constants/app_color.dart';

class TextWidget extends StatelessWidget {
  final Color? color;
  final String text;
  final double size;
  final FontWeight fontWeight;

  const TextWidget({
    super.key,
    this.color,
    required this.text,
    this.fontWeight = FontWeight.w600,
    this.size = 20.0,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: fontWeight,
        color: color ?? AppColor.purple,
      ),
    );
  }
}
