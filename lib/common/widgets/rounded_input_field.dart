import 'package:login_interface/common/widgets/text_field_container.dart';
import 'package:login_interface/common/values/constant.dart';
import 'package:flutter/material.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final TextEditingController controller;
  
  const RoundedInputField({
    super.key,
    required this.hintText,
    this.icon = Icons.person,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.fromLTRB(0, size.height * 0.05, 0, 0),
      child: TextFieldContainer(
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            icon: Icon(
              icon,
              color: kPrimaryColor,
            ),
            hintText: hintText,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
