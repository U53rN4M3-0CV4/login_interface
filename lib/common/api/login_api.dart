import 'package:login_interface/common/widgets/text_field_container.dart';
import 'package:xml_rpc/client.dart' as xml_rpc;
import 'package:get/get.dart';

void handleLogin(account, password) async {
   LoginController controller = Get.find<LoginController>();
  var value = 'http://192.168.0.77:8887/';
  String api = 'login';

  if (value.contains('null')) {
    Get.snackbar('無法獲取伺服器位置', '無法獲取伺服器位置');
  } else {
    Uri uri = Uri.parse(value);
    var m = {
      'account': controller.accountTEC.text,
      'password': controller.passwordTEC.text,
    };
    // 登入
    try {
      final res = await xml_rpc.call(uri, api, [m]);
      if (res == 'Success') {
        Get.snackbar('Working!', 'Login Success');
      } else {
        Get.snackbar('Warning!', 'Login Failure');
      }
    } catch (e) {
      Get.snackbar('ERROR!', e.toString());
    }
  }
}
