import 'package:flutter/material.dart';
import 'package:growup_parents/widgets/custom_button_widget.dart';
import 'package:growup_parents/widgets/custom_clippath.dart';
import 'package:growup_parents/widgets/custom_textfield_type1.dart';

class ParentAccount3 extends StatefulWidget {
  const ParentAccount3({super.key});

  @override
  State<ParentAccount3> createState() => _ParentAccount3State();
}

class _ParentAccount3State extends State<ParentAccount3> {
  bool isPassWordVisible = true;
  double? height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          ClipPath(
            clipper: CustomClipPath(),
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xff4A2A51),
              ),
            ),
          ),
          Positioned(
            bottom: -50,
            right: -70,
            height: 250,
            width: 250,
            child: Container(
              decoration: BoxDecoration(
                //color: Color(0xff4A2A51),
                color: const Color(0xff4A2A51),
                borderRadius: BorderRadius.circular(500),
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 20,
            bottom: 15,
            right: 20,
            child: Card(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset("assets/images/logo.png"),
                    Image.asset(
                      "assets/images/img3.png",
                    ),
                    CustomTextFieldTypeOne(
                      text: 'Create User Id',
                      obscureText: false,
                    ),
                    CustomTextFieldTypeOne(
                      text: 'Confirm Password',
                      suffixIcon: IconButton(
                          icon: isPassWordVisible
                              ? const Icon(Icons.visibility_off)
                              : const Icon(Icons.visibility),
                          onPressed: () {
                            setState(() {
                              isPassWordVisible = !isPassWordVisible;
                            });
                          }),
                      obscureText: isPassWordVisible,
                    ),
                    const SizedBox(height: 20),
                    CustomButton(onTap: () {}, buttonText: "Create"),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
