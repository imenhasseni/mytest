import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytest/app/modules/screens/home/controllers/home_controller.dart';

class DetailPage extends StatelessWidget {
    DetailPage({
    Key key,
    this.index,
  }) : super(key: key);
 final HomeController controller = Get.put(HomeController());
  final int index;
  @override
  Widget build(BuildContext context) {
      var data = Get.arguments;
    print(data);
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 400.0,
            width: double.infinity,
            child: Carousel(
              images: [
                 Image.asset(controller.listProduct.value[index].image, fit: BoxFit.cover,),
                Image.asset(controller.listProduct.value[index].image1,fit: BoxFit.cover,),
                Image.asset(controller.listProduct.value[index].image,fit: BoxFit.cover,),
              ],
            ),
          )
        ],
      ),
    );
  }
}