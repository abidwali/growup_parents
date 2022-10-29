import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Level extends StatefulWidget {
  const Level({super.key});



  @override
  State<Level> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<Level> {
  @override
  Widget build(BuildContext context) {
    final wid = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: const Color.fromRGBO(255, 146, 40, 0.2),
          elevation: 0,
        ),
        body: SafeArea(
            child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          height: 330,
                          width: wid,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(255, 146, 40, 0.2),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(25),
                              bottomRight: Radius.circular(25),
                              topLeft: Radius.circular(0),
                              topRight: Radius.circular(0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                            child: Image.asset('assets/images/level_1.png'),
                          ),
                        ),
                        Container(
                            height: 70,
                            width: wid,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5),
                            )),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(children: [
                                Text(
                                  "Level UP Your Child",
                                  style: GoogleFonts.lato(
                                      textStyle: const TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Text(
                                  "lorem ipsum as it is sometimes known is",
                                  style: GoogleFonts.lato(
                                      textStyle: const TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.black,
                                    // fontWeight: FontWeight.bold
                                  )),
                                ),
                                Text(
                                  "dummy text",
                                  style: GoogleFonts.lato(
                                      textStyle: const TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.black,
                                    // fontWeight: FontWeight.bold
                                  )),
                                ),
                              ]),
                            )),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/scroll_1.png',
                              width: 50,
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 12),
                                  child: Container(
                                    width: 300,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      color: const Color.fromRGBO(142, 151, 253, 1),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                            0,
                                            30,
                                            0,
                                            0,
                                          ),
                                          child: Container(
                                            height: 8,
                                            width: 250,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Column(
                                              children: const [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.fromLTRB(
                                                          25, 5, 0, 0),
                                                  child: Text(
                                                    '80%',
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      EdgeInsets.fromLTRB(
                                                          25, 30, 0, 0),
                                                  child: Text(
                                                    'Level 1',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      EdgeInsets.fromLTRB(
                                                          10, 5, 0, 0),
                                                  child: Text(
                                                    'Basic',
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      100, 0, 0, 0),
                                              child: Image.asset(
                                                'assets/images/girlanime_1.png',
                                                height: 90,
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 12),
                                  child: Container(
                                    width: 300,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      color: const Color.fromRGBO(72, 193, 250, 1),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      children: [
                                        Column(
                                          children: const [
                                            Padding(
                                              padding:
                                                  EdgeInsets.fromLTRB(
                                                      25, 80, 0, 0),
                                              child: Text(
                                                'Level 2',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.fromLTRB(
                                                      10, 5, 0, 0),
                                              child: Text(
                                                'Basic',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              100, 0, 0, 0),
                                          child: Image.asset(
                                            'assets/images/flyingman_1.png',
                                            height: 90,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 12),
                                  child: Container(
                                    width: 300,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      color: const Color.fromRGBO(72, 193, 250, 1),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ]),
                ))));
  }
}
