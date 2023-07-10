import 'package:login_interface/common/values/constant.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountCheck extends StatelessWidget {
  final bool login;
  final VoidCallback press;
  const AlreadyHaveAccountCheck({
    super.key,
    this.login = true,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.fromLTRB(0, size.height * 0.02, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            login ? "Don't have an Accont ? " : "Already have an Account ? ",
            style: const TextStyle(color: kPrimaryColor),
          ),
          // TextButton(onPressed: () {}, child: Text("Sign up"))
          GestureDetector(
            onTap: press,
            child: Text(
              login ? "Sign up" : "Login",
              style: const TextStyle(
                  color: kPrimaryColor, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
