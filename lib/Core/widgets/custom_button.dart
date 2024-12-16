import 'package:bookly_app/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backGroundColor,
    required this.textColor,
    this.borderRadius,
    required this.title,
    this.fontSize,
  });

  final Color backGroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String title;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: borderRadius ?? BorderRadius.circular(16),
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          title,
          style: Styles.textStyle18.copyWith(
            color: textColor,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
