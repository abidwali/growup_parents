import 'package:flutter/material.dart';
import 'package:growup_parents/screens/parent_account3.dart';
import 'package:growup_parents/widgets/custom_button_widget.dart';
import 'package:growup_parents/widgets/custom_clippath.dart';
import 'package:growup_parents/widgets/custom_textfield_type1.dart';

class ParentAccount2 extends StatelessWidget {
  const ParentAccount2({super.key});

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
                    CustomTextFieldTypeOne(
                      text: 'Number of child',
                      obscureText: false,
                    ),
                    CustomTextFieldTypeOne(
                      text: 'State',
                      obscureText: false,
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_drop_down_circle)),
                    ),
                    CustomTextFieldTypeOne(
                      text: 'District',
                      obscureText: false,
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_drop_down_circle)),
                    ),
                    CustomTextFieldTypeOne(
                      text: 'Block',
                      obscureText: false,
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_drop_down_circle)),
                    ),
                    CustomTextFieldTypeOne(
                      text: 'Village',
                      obscureText: false,
                    ),
                    CustomTextFieldTypeOne(
                      text: 'Caste',
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
                                builder: (context) => const ParentAccount3()));
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
