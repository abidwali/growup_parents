import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:growup_parents/widgets/custom_button_widget.dart';
import 'package:growup_parents/widgets/otp_box_widget.dart';

class OtpVerificationScreenChild extends StatefulWidget {
  const OtpVerificationScreenChild({super.key});

  @override
  State<OtpVerificationScreenChild> createState() =>
      _OtpVerificationScreenChildState();
}

class _OtpVerificationScreenChildState
    extends State<OtpVerificationScreenChild> {
  @override
  Widget build(BuildContext context) {
    double? height, width;

    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        height: height * 1,
        child: Stack(
          children: [
            Positioned(
              width: width * 1,
              height: height * .6,
              child: Container(
                decoration: const BoxDecoration(),
                child: Column(
                  children: [
                    const SizedBox(height: 15),
                    Image.asset(
                      "assets/images/childotp.png",
                      width: width * 1,
                      height: height * .57,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 15),
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
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              //top: height* .6,
              width: width * 1,
              height: height * .4,
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
              bottom: 0,
              //top: height* .63,
              width: width * 1,
              height: height * .35,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                ),
                child: SingleChildScrollView(
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
                          children: [
                            OtpBox(first: true, last: false),
                            const SizedBox(width: 5),
                            OtpBox(first: false, last: false),
                            const SizedBox(width: 5),
                            OtpBox(first: false, last: false),
                            const SizedBox(width: 5),
                            OtpBox(first: false, last: true),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
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
            ),
          ],
        ),
      ),
    );
  }
}
