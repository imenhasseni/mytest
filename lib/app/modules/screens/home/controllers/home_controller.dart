

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytest/app/modules/screens/home/views/detail_page.dart';
import 'package:mytest/app/service/filtered/filtred_service.dart';
import 'package:mytest/app/service/product/product_service.dart';

class HomeController extends GetxController {
 var pageController = PageController();
  final FiltredService _filtredService = FiltredService();
  final ProductService apiService = ProductService();
   RxList listGroup = List.empty(growable: true).obs;
  RxList listProduct = List.empty(growable: true).obs;

  RxInt selected = (-1).obs;
  var selectedIndex =  0.obs;

   List<String> toggleLables= ["Man", "Women"];
   List<Color> seelectedBackgroundColor = [Colors.black,  Colors.black];
   List<Color> unseelectedBackgroundColor= [Colors.white,  Colors.white];
   List<MaterialColor> colors = [Colors.deepOrange, Colors.amber];
   List<String> text = ["BRACE YOURSELF !", "SHOPING DAY !"];
   List<String> text1 = ["GET YOURS  !", "Ladies !"];

 @override
  void onInit() {
    getAllFiltred();
    getAllCategory();
    super.onInit();
  }

   Future<void> getAllFiltred() async {
    listGroup.value = await _filtredService.getAllFiltred();
  }
    Future<void> getAllCategory() async {
      listProduct.value = await apiService.getAllProduct();
  }

   void changeSelectedIndex(int index){
    selectedIndex.value = index;
   }



}