// ignore_for_file: file_names

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '3rd_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      Image.asset(
        'assets/images/screen_2_2.png',
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
                        builder: (context) => const ThirdScreen()));
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
    //  Column(
    //   children: [
    //     Padding(
    //       padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
    //       child: Image.asset(
    //         "assets/images/parents.png",
    //         height: 350,
    //       ),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.symmetric(vertical: 16),
    //       child: Text(
    //         'Step By Step Learning Progress Of Your Child ',
    //         // style: ,
    //         textAlign: TextAlign.start,
    //         maxLines: 3,

    //         // Color.fromRGBO(74, 42, 81, 1),
    //       ),
    //     )
    //   ],
    // ),
    // floatingActionButton: FloatingActionButton(

    //     backgroundColor: Color.fromRGBO(74, 42, 81, 1),

    //     onPressed: () {
    //       Navigator.push(context,
    //           MaterialPageRoute(builder: (context) => const ThirdScreen()));
    //     },
    //     // tooltip: 'Increment',
    //     child: const Icon(
    //       Icons.arrow_forward,

    //     )));
  }
}
