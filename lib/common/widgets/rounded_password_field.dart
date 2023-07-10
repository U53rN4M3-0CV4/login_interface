import 'package:login_interface/common/widgets/text_field_container.dart';
import 'package:login_interface/common/values/constant.dart';
import 'package:flutter/material.dart';

class RoundedPasswordField extends StatelessWidget {
  final TextEditingController controller;
  const RoundedPasswordField({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.fromLTRB(0, size.height * 0.02, 0, 0),
      child: TextFieldContainer(
        child: TextField(
          obscureText: true,
          controller: controller,
          decoration: const InputDecoration(
            hintText: 'Password',
            icon: Icon(
              Icons.lock,
              color: kPrimaryColor,
            ),
            suffixIcon: Icon(
              Icons.visibility,
              color: kPrimaryColor,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
