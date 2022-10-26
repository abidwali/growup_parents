
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class OtpBox extends StatefulWidget {
  bool? first;
  bool? last;
  OtpBox({
    Key? key,
    this.first,
    this.last,
  }) : super(key: key);

  @override
  State<OtpBox> createState() => _OtpBoxState();
}

class _OtpBoxState extends State<OtpBox> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 50,
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        autofocus: true,
        onChanged: (value) {
          if (value.length == 1 && widget.last == false) {
            FocusScope.of(context).nextFocus();
          }
          if (value.isEmpty && widget.first == false) {
            FocusScope.of(context).previousFocus();
          }
        },
        showCursor: false,
        readOnly: false,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(
          counter: const Offstage(),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 2, color: Color(0xff4A2A51)),
              borderRadius: BorderRadius.circular(12)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 2, color: Colors.purple),
              borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}
