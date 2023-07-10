import 'package:get/get.dart';
import 'package:login_interface/pages/index.dart';

part 'route.dart';

class AppPages {
  // 初始頁面
  // ignore: constant_identifier_names
  static const INITIAL = RouteNames.welcome;

  // 找不到路徑時轉跳的頁面
  static final unknownRoute = GetPage(
    name: RouteNames.welcome,
    page: () => const WelcomePage(),
  );

  // 路由
  static final routes = [
    GetPage(
      name: RouteNames.welcome,
      page: () => const WelcomePage(),
    ),
    GetPage(
      name: RouteNames.signup,
      page: () => const SignupPage(),
    ),
    GetPage(
      name: RouteNames.login,
      page: () => const LoginPage(),
    ),
  ];
}
