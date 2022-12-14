// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:growup_parents/screens/login_signup/otp_auth_screen.dart';
import 'package:growup_parents/screens/login_signup/parent_account.dart';
import 'package:growup_parents/widgets/custom_button_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  double? height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height! * 1,
        child: Stack(
          children: [
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
              top: 30,
              width: width! * 1,
              height: height! * .5,
              child: Container(
                decoration: const BoxDecoration(),
                child: Column(
                  children: [
                    //const SizedBox(height: 40),
                    Image.asset(
                      "assets/images/img1.png",
                      width: width! * 1,
                      height: height! * .43,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              width: width! * 1,
              height: height! * .5,
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
              width: width! * 1,
              height: height! * .45,
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
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const SizedBox(width: 70),
                          RichText(
                            text: const TextSpan(
                              text: "Give Your Child A \nBetter ",
                              style: TextStyle(
                                color: Color(0xff4A2A51),
                                fontSize: 25,
                              ),
                              children: [
                                TextSpan(
                                  text: "Future",
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 25,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 240,
                        child: const TextField(
                          decoration: InputDecoration(labelText: "username"),
                        ),
                      ),
                      Container(
                        width: 240,
                        child: const TextField(
                          decoration: InputDecoration(labelText: "password"),
                          obscureText: true,
                        ),
                      ),
                      const SizedBox(height: 35),
                      CustomButton(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const OtpAuthScreen()));
                        },
                        buttonColor: const Color(0xff4A2A51),
                        borderRadius: 5,
                        textColor: Colors.white,
                        buttonText: "Log in",
                      ),
                      const SizedBox(height: 40),
                      CustomButton(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ParentAccount()));
                        },
                        buttonColor: Colors.transparent,
                        borderRadius: 5,
                        textColor: Colors.amber,
                        buttonText: "Create Account",
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
