import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'profile.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    final wid = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 240, 239, 239),
        body: SafeArea(
            child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                      Container(
                        height: 150,
                        width: wid,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(74, 42, 81, 1),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(55),
                            bottomRight: Radius.circular(55),
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(0),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  15, 50, 15, 20),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(10, 0, 15, 0),
                                        child: Container(
                                          width: 40,
                                          height: 40,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.network(
                                            'https://picsum.photos/seed/41/600',
                                          ),
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Hey Mr.Patel',
                                            style: GoogleFonts.lato(
                                              color: Colors.white,
                                              textStyle: const TextStyle(
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          const Text(
                                            'Thusday,08 July',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Lato',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Container(
                                    // height: 300,
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade50,
                                        borderRadius:
                                            BorderRadius.circular(12.0)),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.notifications_active_outlined,
                                        color: Color.fromRGBO(74, 42, 81, 1),
                                        size: 24,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // SearchBar(),
                          ],
                        ),
                      ),

                      // Generated code for this Stack Widget...
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20, 29, 20, 0),
                            child: Container(
                              width: double.infinity,
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFF4A2A51),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    35, 15, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Transform',
                                          style: GoogleFonts.lato(
                                            textStyle: const TextStyle(
                                              fontSize: 15,
                                              fontFamily: 'Lato',
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        // SizedBox(height: 50),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8),
                                          child: Text(
                                            "Understand Your Child's ",
                                            style: GoogleFonts.lato(
                                              textStyle: const TextStyle(
                                                fontSize: 15.0,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "Strength And Weakness ",
                                          style: GoogleFonts.lato(
                                            textStyle: const TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.75, -0.7),
                            child: Image.asset(
                              'assets/images/target_2.png',
                              width: 100,
                              height: 180,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                        child: Text(
                          'How It Works',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                        child: Text(
                            'step by step learning progress of your child'),
                      ),
                      Container(
                        height: 500,
                        width: wid,
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(74, 42, 81, 1),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30))),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                          child: Container(
                            height: 400,
                            width: wid,
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30))),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: FloatingActionButton(
                                          backgroundColor: const Color.fromRGBO(
                                              74, 42, 81, 1),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const Profile()));
                                          },
                                          // tooltip: 'Increment',
                                          child: const Icon(Icons.arrow_back)),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                                      child: Text(
                                        'Open Account',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    // const Divider(
                                    //   thickness: 10,
                                    //   height: 10,
                                    //   indent: 20,
                                    //   endIndent: 0,
                                    //   color: Colors.black,
                                    // )
                                  ],
                                ),
                                Text(
                                  "lorem ipsum as it is sometimes known is",
                                  style: GoogleFonts.lato(
                                      textStyle: const TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black,
                                    // fontWeight: FontWeight.bold
                                  )),
                                ),
                                Text(
                                  "dummy text",
                                  style: GoogleFonts.lato(
                                      textStyle: const TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black,
                                    // fontWeight: FontWeight.bold
                                  )),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 80,
                                  width: wid,
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      borderRadius: BorderRadius.only(
                                          // topRight: Radius.circular(5),
                                          )),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            50, 0, 0, 0),
                                        child: Container(
                                          width: 60,
                                          height: 60,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.network(
                                            'https://picsum.photos/seed/41/600',
                                          ),
                                        ),
                                      ),
                                      Column(
                                        children: const [
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 5, 0, 0),
                                            child: Text(
                                              'Sonali Patel',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 5, 0, 0),
                                            child: Text(
                                              '12 th class',
                                              style: TextStyle(
                                                color: Colors.black26,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w800,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 5, 0, 0),
                                            child: Text(
                                              'Copy id',
                                              style: TextStyle(
                                                color: Colors.black26,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            60, 0, 0, 0),
                                        child: Container(
                                          height: 10,
                                          width: 10,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 0, 0, 0),
                                        child: Container(
                                          height: 30,
                                          width: 75,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: const Color.fromARGB(
                                                  255, 152, 217, 154)),
                                          child: const Center(
                                              child: Text('Report')),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 80,
                                  width: wid,
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      borderRadius: BorderRadius.only(
                                          // topRight: Radius.circular(5),
                                          )),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            50, 0, 0, 0),
                                        child: Container(
                                          width: 60,
                                          height: 60,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.network(
                                            'https://picsum.photos/seed/41/600',
                                          ),
                                        ),
                                      ),
                                      Column(
                                        children: const [
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 5, 0, 0),
                                            child: Text(
                                              'Shivam Patel',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 5, 0, 0),
                                            child: Text(
                                              'Engineer',
                                              style: TextStyle(
                                                color: Colors.black26,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w800,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 5, 0, 0),
                                            child: Text(
                                              'Copy id',
                                              style: TextStyle(
                                                color: Colors.black26,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            50, 0, 0, 0),
                                        child: Container(
                                          height: 10,
                                          width: 10,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color:
                                                Color.fromARGB(255, 251, 4, 4),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 0, 0, 0),
                                        child: Container(
                                          height: 30,
                                          width: 75,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: const Color.fromARGB(
                                                  255, 245, 138, 138)),
                                          child: const Center(
                                              child: Text('Enroll')),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      height: 50,
                                      width: 200.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color:
                                            const Color.fromRGBO(74, 42, 81, 1),
                                      ),
                                      child: const Center(
                                          child: Text(
                                        'Add New',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ))
                              ],
                            ),
                          ),
                        ),
                      )
                    ])))));
  }
}
