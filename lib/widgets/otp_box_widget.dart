import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpBox extends StatelessWidget {
  const OtpBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: TextField(
        decoration: const InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: Color(0xff4A2A51),
            ),
          ),
        ),
        style: Theme.of(context).textTheme.headline6,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
      ),
    );
  }
}
