
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:mytest/app/modules/dashboard/bindings/dashboard_binding.dart';
import 'package:mytest/app/modules/dashboard/views/dashboard_page.dart';
import 'package:mytest/app/modules/login/bindings/login_binding.dart';
import 'package:mytest/app/modules/login/views/login_page.dart';
import 'package:mytest/app/modules/screens/account/views/account_page.dart';
import 'package:mytest/app/modules/screens/alerts/views/alerts_page.dart';
import 'package:mytest/app/modules/screens/home/bindings/home_binding.dart';
import 'package:mytest/app/modules/screens/home/views/detail_page.dart';
import 'package:mytest/app/modules/screens/home/views/home_page.dart';
import 'package:mytest/app/modules/screens/news/views/news_page.dart';
import 'package:mytest/app/modules/splashScreen/views/splash_page.dart';


part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPlASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashPage()
    ),
     GetPage(
      name: _Paths.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),

     GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardPage(),
       binding: DashboardBinding(),

    ),


      GetPage(
      name: _Paths.HOME,
      page: () => Homepage(),

    ),
      GetPage(
      name: _Paths.NEWS,
      page: () => NewsPage(),

    ),
      GetPage(
      name: _Paths.ALERTS,
      page: () => AlertsPage(),

    ),
      GetPage(
      name: _Paths.ACCOUNTS,
      page: () => AccountPage(),

    ),
   
   GetPage(
      name: _Paths.PRODUCT,
      page: () => DetailPage(),
      binding: HomeBinding(),

    ),

  ];
}