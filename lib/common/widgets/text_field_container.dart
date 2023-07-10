import 'package:login_interface/common/values/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(200),
      ),
      child: child,
    );
  }
}

class LoginController extends GetxController {
  LoginController();
  // 控制器
  /// 控制器-帳號
  final TextEditingController accountTEC = TextEditingController();

  /// 控制器-密碼
  final TextEditingController passwordTEC = TextEditingController();
}
