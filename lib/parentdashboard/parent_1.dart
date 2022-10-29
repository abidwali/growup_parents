import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '2nd_screen.dart';


class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      Image.asset(
        'assets/images/screen_1_2.png',
        height: 680,
      ),
      Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: DotsIndicator(
              dotsCount: 3,
              decorator: DotsDecorator(
                  size: const Size.fromRadius(8),
                  activeColor: const Color.fromRGBO(74, 42, 81, 1),
                  activeSize: const Size(18, 18),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          const SizedBox(width: 120),
          FloatingActionButton(
              backgroundColor: const Color.fromRGBO(74, 42, 81, 1),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondScreen()));
              },
              // tooltip: 'Increment',
              child: const Icon(
                Icons.arrow_forward,
              ))
        ],
        // Image.asset('name')
      )

      // children[]: Image.asset(
      //   'assets/images/screen_1_1.png',
    ]));
  }
}
