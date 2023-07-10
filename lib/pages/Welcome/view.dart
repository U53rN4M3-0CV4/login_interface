import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_interface/common/values/constant.dart';
import 'package:login_interface/common/widgets/index_widgets.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GetBuilder<LoginController>(
      init: LoginController(),
      id: "welcome",
      builder: (_) {
        return Scaffold(
          body: SizedBox(
            height: size.height,
            width: double.infinity,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Welcome',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                  RoundedButton(
                    text: "LOGIN",
                    press: () {
                      Get.offNamed('/login');
                    },
                  ),
                  RoundedButton(
                    text: "SIGNUP",
                    color: kPrimaryLightColor,
                    textColor: Colors.black,
                    press: () {
                      Get.offNamed('/signup');
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
