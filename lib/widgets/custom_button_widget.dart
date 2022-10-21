// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  VoidCallback onTap;
  Color? buttonColor;
  double? borderRadius;
  Color? textColor;
  String buttonText;
  CustomButton({
    Key? key,
    required this.onTap,
    this.buttonColor,
    this.borderRadius,
    this.textColor,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 60),
      height: 40,
      decoration: BoxDecoration(
        color: buttonColor ?? const Color(0xff4A2A51),
        borderRadius: BorderRadius.circular(borderRadius ?? 5),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                  color: textColor ?? Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ),
    );
  }
}
