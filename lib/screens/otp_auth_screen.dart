// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:growup_parents/widgets/custom_button_widget.dart';
import 'package:growup_parents/widgets/otp_box_widget.dart';

class OtpAuthScreen extends StatelessWidget {
  const OtpAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
      double? height, width;

    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height* 1,
        child: Stack(
          children: [
            Positioned(
              width: width* 1,
              height: height* .6,
              child: Container(
                decoration: const BoxDecoration(),
                child: Column(
                  children: [
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(width: 12),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color(0xff4A2A51),
                          ),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              CupertinoIcons.arrow_left,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                        const SizedBox(width: 30),
                        Image.asset("assets/images/logo.png"),
                      ],
                    ),
                    Image.asset(
                      "assets/images/img2.png",
                      width: 320,
                      height: height* .43,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: height* .6,
              width: width* 1,
              height: height* .35,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xff4A2A51),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                ),
              ),
            ),
            Positioned(
              top: height* .63,
              width: width* 1,
              height: height* .35,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 25),
                    const Text(
                      "Enter Code",
                      style: TextStyle(
                        color: Color(0xff4A2A51),
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Please enter the code you have received on your email or phone?",
                      style: TextStyle(
                        color: Color(0xff4A2A51),
                        fontSize: 10,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Form(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          OtpBox(),
                          SizedBox(width: 5),
                          OtpBox(),
                          SizedBox(width: 5),
                          OtpBox(),
                          SizedBox(width: 5),
                          OtpBox(),
                          SizedBox(width: 5),
                          OtpBox(),
                          SizedBox(width: 5),
                          OtpBox(),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      onTap: () {},
                      buttonColor: Colors.transparent,
                      borderRadius: 5,
                      textColor: Colors.amber,
                      buttonText: "Query? Contact",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}