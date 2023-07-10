import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_interface/common/routers/pages.dart';
import 'package:login_interface/common/values/constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor, //constants.dart 設定顏色常數
        scaffoldBackgroundColor: Colors.white,
      ),
      // 初始頁面
      initialRoute: AppPages.INITIAL,
      // 轉換頁面路由
      getPages: AppPages.routes,
      // 找不到頁面時跳轉
      unknownRoute: AppPages.unknownRoute, //welcome_screen.dart
    );
  }
}
