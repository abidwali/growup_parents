import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  const CustomDropDown({super.key});

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  _CustomDropDownState() {
    _selectedValue = _jobProfileList[0];
  }

  final _jobProfileList = [
    "Flutter Developer",
    "FrontEnd Developer",
    "BackEnd Developer",
    "FullStack Developer"
  ];
  String? _selectedValue = "";
  bool isPassWordVisible = false;
  //double? height, width;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Job Profile",
            style: TextStyle(
              color: Color(0xff4A2A51),
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 5),
          DropdownButtonFormField(
            value: _selectedValue,
            items: _jobProfileList.map((e) {
              return DropdownMenuItem(value: e, child: Text(e));
            }).toList(),
            onChanged: (val) {
              setState(() {
                _selectedValue = val as String;
              });
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  width: 3,
                  color: Color(0xff4A2A51),
                ),
              ),
            ),
            style: Theme.of(context).textTheme.bodySmall,
            icon: const Icon(Icons.arrow_drop_down_circle),
          ),
        ],
      ),
    );
  }
}
