part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const SPlASH = _Paths.SPLASH;
  static const LOGIN = _Paths.LOGIN;
  static const DASHBOARD = _Paths.DASHBOARD;
  static const HOME = _Paths.HOME;
  static const NEWS = _Paths.NEWS;
  static const ALERTS = _Paths.ALERTS;
  static const ACCOUNTS = _Paths.ACCOUNTS;
  static const PRODUCT = _Paths.PRODUCT;


}

abstract class _Paths {
  _Paths._();
  static const SPLASH = '/splash';
  static const LOGIN = '/login';
  static const DASHBOARD = '/dashboard';
  static const HOME = '/home';
  static const NEWS = '/news';
  static const ALERTS = '/alerts';
  static const ACCOUNTS = '/accounts';
  static const PRODUCT = '/product';


}