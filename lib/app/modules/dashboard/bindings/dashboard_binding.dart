import 'package:get/get.dart';
import 'package:mytest/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:mytest/app/modules/screens/account/controllers/accounts_controller.dart';
import 'package:mytest/app/modules/screens/home/controllers/home_controller.dart';


class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<AccountController>(() => AccountController());
  }
}