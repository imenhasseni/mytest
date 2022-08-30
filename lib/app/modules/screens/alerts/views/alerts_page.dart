import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytest/app/modules/screens/alerts/controllers/alerts_controller.dart';



class AlertsPage extends GetView<AlertsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        child: Center(child: Text('Alerts Page'),),
      ),
    );
  }
}