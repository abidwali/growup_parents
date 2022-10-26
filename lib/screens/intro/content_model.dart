// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

List introScreens = [
  IntroScreenOne(),
  IntroScreenTwo(),
  IntroScreenThree(),
];

class IntroScreenOne extends StatelessWidget {
  IntroScreenOne({super.key});
  double? height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        //fit: StackFit.expand,
        children: [
          Positioned(
            left: -15,
            top: 93,
            child: Image.asset(
              "assets/images/toppng.png",
            ),
          ),
          Positioned(
            right: 30,
            top: 100,
            child: Container(
              height: height! * .39,
              width: width! * .55,
              decoration: BoxDecoration(
                  color: const Color(0xffE3BBEA),
                  borderRadius: BorderRadius.circular(30)),
            ),
          ),
          Positioned(
            right: 50,
            top: 93,
            child: Image.asset(
              "assets/images/introback.png",
              height: height! * .4,
              // width: width! * .55,
            ),
          ),
          Positioned(
            right: 90,
            top: 220,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 5, color: Colors.white),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Image.asset(
                "assets/images/introfront.png",
                height: height! * .39,
                width: width! * .55,
              ),
            ),
          ),
          const Positioned(
            bottom: 80,
            left: 70,
            child: Text(
              "UnderStand Your \nChild's Strength And \nWeakness.",
              style: TextStyle(
                color: Color(0xff4A2A51),
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IntroScreenTwo extends StatelessWidget {
  IntroScreenTwo({super.key});
  double? height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            //right: 42.33,
            top: 15,
            //left: 59.67,
            child: Image.asset(
              "assets/images/introtwo.png",
              height: height! * .7,
              width: width! * 1,
            ),
          ),
          const Positioned(
            bottom: 80,
            left: 70,
            child: Text(
              "Step By Step \nLearning Progress Of \nYour Child.",
              style: TextStyle(
                color: Color(0xff4A2A51),
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IntroScreenThree extends StatelessWidget {
  IntroScreenThree({super.key});
  double? height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        //fit: StackFit.expand,
        children: [
          Positioned(
            left: 0,
            top: 93,
            child: Image.asset(
              "assets/images/toppng.png",
            ),
          ),
          Positioned(
            right: 30,
            top: 100,
            child: Image.asset(
              "assets/images/introthreeback.png",
              height: height! * .4,
              // width: width! * .55,
            ),
          ),
          Positioned(
            right: 90,
            top: 220,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 5, color: Colors.white),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Image.asset(
                "assets/images/introthreefront.png",
                height: height! * .39,
                width: width! * .55,
              ),
            ),
          ),
          const Positioned(
            bottom: 80,
            left: 70,
            child: Text(
              "Motivate Your Child \nAnd Help Them \nGrow.",
              style: TextStyle(
                color: Color(0xff4A2A51),
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
