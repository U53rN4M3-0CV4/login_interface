import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_interface/common/values/constant.dart';
import 'package:login_interface/common/widgets/index_widgets.dart';

class SignupPage extends GetView<LoginController> {
  // final Widget child;
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GetBuilder<LoginController>(
      init: LoginController(),
      id: "signup",
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
                    "SIGN UP",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor,
                        fontSize: 50),
                  ),
                  RoundedInputField(
                    hintText: 'Your Email',
                    controller: controller.accountTEC,
                  ),
                  RoundedPasswordField(
                    controller: controller.passwordTEC,
                  ),
                  RoundedButton(text: 'SIGN UP', press: () {}),
                  AlreadyHaveAccountCheck(
                      login: false,
                      press: () {
                        Get.offAllNamed('/login');
                      }),
                  const OrDivider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialIcon(
                        iconSrc: 'assets/icons/facebook.svg',
                        press: () {},
                      ),
                      SocialIcon(
                        iconSrc: 'assets/icons/twitter.svg',
                        press: () {},
                      ),
                      SocialIcon(
                        iconSrc: 'assets/icons/google-plus.svg',
                        press: () {},
                      ),
                    ],
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
