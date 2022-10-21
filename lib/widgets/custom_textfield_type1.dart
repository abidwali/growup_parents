// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomTextFieldTypeOne extends StatelessWidget {
  TextEditingController? controller;
  String text;
  dynamic suffixIcon;
  //DropdownButton? dropDown;
  final bool obscureText;
  TextInputType? keyboardType;
  int? maxInputLength;
  String? hintText;
  CustomTextFieldTypeOne({
    Key? key,
    this.controller,
    required this.text,
    this.suffixIcon,
    required this.obscureText,
    this.keyboardType,
    this.maxInputLength,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: const TextStyle(
              color: Color(0xff4A2A51),
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 5),
          TextField(
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
              hintText: hintText,
              suffixIcon: suffixIcon,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  width: 3,
                  color: Color(0xff4A2A51),
                ),
              ),
            ),
            style: Theme.of(context).textTheme.bodySmall,
            keyboardType: keyboardType,
            maxLength: maxInputLength,
          ),
        ],
      ),
    );
  }
}
