import 'package:flutter/material.dart';

import 'package:get/state_manager.dart';

import 'package:get/get.dart';
import 'package:mytest/app/routes/app_pages.dart';

class SplashController  extends GetxController{
  var pageController = PageController();

login()
{
Get.offAllNamed(Routes.LOGIN);
}
  

  
  
}