import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:mytest/app/modules/screens/home/controllers/home_controller.dart';
import 'package:mytest/app/modules/screens/home/views/component/cardProduct.dart';
import 'package:mytest/app/modules/screens/home/views/component/cardTab.dart';

import 'detail_page.dart';


// ignore: must_be_immutable
class Homepage extends GetView<HomeController> {
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                      color: Colors.grey[300],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: IconButton(
                      onPressed: () {},
                      icon:
                          Icon(Icons.qr_code_outlined, color: Colors.black54)),
                ),
                Obx(() => FlutterToggleTab(
                      height: 50,
                      width: 40,
                      borderRadius: 10,
                      labels: homeController.toggleLables,
                      selectedLabelIndex: (index) {
                        homeController.changeSelectedIndex(index);
                      },
                      isScroll: true,
                      isShadowEnable: true,
                      selectedBackgroundColors:
                          homeController.seelectedBackgroundColor,
                      unSelectedBackgroundColors:
                          homeController.unseelectedBackgroundColor,
                      selectedTextStyle:
                          TextStyle(color: Colors.white, fontSize: 15),
                      unSelectedTextStyle:
                          TextStyle(color: Colors.grey, fontSize: 15),
                      selectedIndex: homeController.selectedIndex.value,
                    )),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                      color: Colors.grey[300],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search_outlined, color: Colors.black54)),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: size.width * 0.4,
            width: size.width * 0.9,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/shop.jpg'),
                    fit: BoxFit.cover,
                    colorFilter:
                        ColorFilter.mode(Colors.black45, BlendMode.darken)),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: Offset(0, 4),
                      blurRadius: 5)
                ]),
            child: Stack(
              children: [
                Positioned(
                    top: 30,
                    left: 20,
                    child: Text(
                      homeController.text[homeController.selectedIndex.value],
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            fontSize: 18,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    )),
                Positioned(
                    top: 60,
                    left: 20,
                    child: Text(
                      homeController.text1[homeController.selectedIndex.value],
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            fontSize: 18,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    )),
                Positioned(
                  top: 90,
                  left: 20,
                  child: TextButton(
                    child: Text("Shop Now"),
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        minimumSize: Size(20.0, 30.0),
                        backgroundColor: homeController
                            .colors[homeController.selectedIndex.value],
                        primary: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Obx(
            () => Padding(
              padding: const EdgeInsets.only(left: 10, top: 8),
              child: SizedBox(
                height: 65,
                child: ListView.builder(
                  itemCount: controller.listGroup.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: CardTab(
                        controller: controller,
                        index: index,
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          Obx(() => Padding(
                padding: const EdgeInsets.only(left: 5),
                child: GridView.count(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  childAspectRatio: 100 / 120,
                  physics: NeverScrollableScrollPhysics(),
                  children:
                      List.generate(controller.listProduct.length, (index) {
                    return GestureDetector(
                        onTap:(){   
                          
                  Get.off( DetailPage(index: index,), arguments: controller.listProduct.value[index].name);
},
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: CardProduct(
                          controller: controller,
                          index: index,
                        ),
                      ),
                    );
                  }),
                ),
              ))
        ],
      ),
    );
  }
}
