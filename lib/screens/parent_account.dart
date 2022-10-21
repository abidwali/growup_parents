import 'package:flutter/material.dart';
import 'package:growup_parents/screens/parent_account2.dart';
import 'package:growup_parents/widgets/custom_button_widget.dart';
import 'package:growup_parents/widgets/custom_clippath.dart';
import 'package:growup_parents/widgets/custom_textfield_type1.dart';

class ParentAccount extends StatefulWidget {
  const ParentAccount({super.key});

  @override
  State<ParentAccount> createState() => _ParentAccountState();
}

class _ParentAccountState extends State<ParentAccount> {
  bool isPassWordVisible = true;

  get items => null;
  late final ValueChanged? onChanged;
//double? height, width;
  @override
  Widget build(BuildContext context) {
    //height = MediaQuery.of(context).size.height;
    //width = MediaQuery.of(context).size.width;
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
            top: 400,
            left: 200,
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
                    const Text(
                      "Parents Detail",
                      style: TextStyle(color: Color(0xFFFF9228)),
                    ),
                    CustomTextFieldTypeOne(
                      text: 'Name',
                      obscureText: false,
                    ),
                    CustomTextFieldTypeOne(
                      text: 'Email',
                      obscureText: false,
                    ),
                    CustomTextFieldTypeOne(
                      text: 'Id',
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
                    CustomTextFieldTypeOne(
                      text: 'Phone number',
                      obscureText: false,
                      keyboardType: TextInputType.number,
                      hintText: "+91",
                    ),
                    CustomTextFieldTypeOne(
                      text: 'Whatsapp number',
                      obscureText: false,
                      keyboardType: TextInputType.number,
                      maxInputLength: 10,
                      hintText: "+91",
                    ),
                    CustomTextFieldTypeOne(
                      text: 'Job profile',
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_drop_down_circle)),
                      obscureText: false,
                    ),
                    CustomTextFieldTypeOne(
                      text: 'Home status',
                      obscureText: false,
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ParentAccount2()));
                      },
                      buttonText: "Next",
                    ),
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
