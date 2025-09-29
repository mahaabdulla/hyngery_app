import 'package:flutter/material.dart';

class CustomeText extends StatelessWidget {
  const CustomeText({
    super.key,
    required this.text,
    this.color,
    this.weight,
    this.size,
  });
  final String text;
  final Color? color;
  final FontWeight? weight;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: size, fontWeight: weight),
    );
  }
}
