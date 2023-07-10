import 'package:flutter/material.dart';
import 'package:login_interface/common/api/login_api.dart';
import 'package:login_interface/common/values/constant.dart';
import 'package:login_interface/common/widgets/index_widgets.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Get.put(LoginController());
    return GetBuilder<LoginController>(
      init: LoginController(),
      id: "login",
      builder: (_) {
        return Scaffold(
          body: SizedBox(
            width: double.infinity,
            height: size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'LOGIN',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: kPrimaryColor),
                ),
                RoundedInputField(
                  hintText: 'Your Email',
                  controller: controller.accountTEC,
                ),
                RoundedPasswordField(controller: controller.passwordTEC),
                RoundedButton(
                    text: "LOGIN",
                    press: () {
                      handleLogin(controller.accountTEC.value,
                          controller.passwordTEC.value);
                    }),
                AlreadyHaveAccountCheck(
                  press: () {
                    Get.offAllNamed('/signup');
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
