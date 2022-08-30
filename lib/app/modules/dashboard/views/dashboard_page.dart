import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytest/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:mytest/app/modules/screens/account/views/account_page.dart';
import 'package:mytest/app/modules/screens/alerts/views/alerts_page.dart';
import 'package:mytest/app/modules/screens/home/views/home_page.dart';
import 'package:mytest/app/modules/screens/news/views/news_page.dart';


class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
               Homepage(),
               NewsPage(),
               AlertsPage(),
               AccountPage()
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.black,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            elevation: 0,
            items: const <BottomNavigationBarItem> [
              BottomNavigationBarItem(
                icon:  Icon(Icons.storefront),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon:  Icon(Icons.mail_outline_rounded),
                label: 'News',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.wallet_giftcard_rounded),
                label: 'Alerts',
              ),
              BottomNavigationBarItem(
                icon: CircleAvatar(radius: 15, backgroundImage: AssetImage('assets/images/me.jpg')),
                label: 'Account',
              ),
            ],
          ),
        );
      },
    );
  }

}