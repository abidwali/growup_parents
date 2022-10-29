
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wid = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: GestureDetector(
          // onTap: () => FocusScope.of(context).unfocus(),
          onTap: () {},
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
                        padding: const EdgeInsetsDirectional.fromSTEB(15, 50, 15, 20),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 15, 0),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                  borderRadius: BorderRadius.circular(12.0)),
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
                      padding: const EdgeInsetsDirectional.fromSTEB(20, 29, 20, 0),
                      child: Container(
                        width: double.infinity,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFF4A2A51),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(35, 15, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8),
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
                  child: Text('step by step learning progress of your child'),
                ),
                // KTitleText(title: "Find Your Job"),
                const SizedBox(height: 15.0),
                // Generated code for this Row Widget...
                Center(
                  child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Image.asset('assets/images/vector_1.png')),
                ),
                Row(
                  children: const [
                    // MainAxisAlignment.spaceBetween,
                    SizedBox(width: 40),
                    Text('oct'),
                    SizedBox(width: 40),
                    Text('Nov'),
                    SizedBox(width: 40),
                    Text('Dec'),
                    SizedBox(width: 40),
                    Text('Jan'),
                    SizedBox(width: 40),
                    Text('Feb'),
                    SizedBox(width: 40),
                  ],
                ),
                const SizedBox(height: 30),
                const Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: Text(
                    'Education Level',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),

                // Generated code for this Container Widget...
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(25, 15, 25, 20),
                    child: Container(
                      height: 115,

                      // color: Color.fromARGB(102, 246, 149, 52),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 30.0,
                            spreadRadius: -25.0,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromARGB(255, 248, 194, 113),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Image.asset('assets/images/students 1.png'),
                                const SizedBox(
                                  width: 40.0,
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'See walkthrough',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Text('Roadmap of good future'),
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 8, 0, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    20, 0, 0, 0),
                                            child: Container(
                                              width: 100,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                color: Colors.orange,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: const Center(
                                                  child: Text(
                                                'Check',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              )),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
