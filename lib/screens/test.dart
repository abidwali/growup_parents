// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class TestWidgets extends StatefulWidget {
  const TestWidgets({super.key});

  @override
  State<TestWidgets> createState() => _TestWidgetsState();
}

class _TestWidgetsState extends State<TestWidgets> {
  bool isPassWordVisible = false;
  //double? height, width;
  @override
  Widget build(BuildContext context) {
    Icon visOff = const Icon(Icons.visibility_off);
    Icon visOnn = const Icon(Icons.visibility);
    //height = MediaQuery.of(context).size.height;
    //width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Id",
            style: TextStyle(
              color: Color(0xff4A2A51),
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 250),
          TextField(
            obscureText: isPassWordVisible,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                  icon: isPassWordVisible ? visOff : visOnn,
                  onPressed: () {
                    setState(() {
                      isPassWordVisible = !isPassWordVisible;
                    });
                  }),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  width: 3,
                  color: Color(0xff4A2A51),
                ),
              ),
            ),
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    ));
  }
}
