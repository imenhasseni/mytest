import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytest/app/modules/screens/account/controllers/accounts_controller.dart';


class AccountPage extends GetView<AccountController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        child: Center(child: Text('Account Page'),),
      ),
    );
  }
}