import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:mytest/app/modules/splashScreen/controllers/splash_controller.dart';


class SplashPage extends  GetView<SplashController> {
 final _controller = SplashController();
  @override
  Widget build(BuildContext context) {
    return  Column(
          children: <Widget>[
            Expanded(
              child: Stack(
                children: <Widget>[
                  Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/img1.jpeg'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken)
                          )
                        ),
                  ),     
              Container(
                padding: const EdgeInsets.only(top: 700,right: 10, left: 10),
                child: Column(
                 crossAxisAlignment: CrossAxisAlignment.stretch,
                 children: <Widget>[
                   TextButton(
                     child: Text(
                     "CREATE AN ACCOUNT"
                     ),
                    onPressed: () {
                   
                     },
                     style: TextButton.styleFrom(
                         minimumSize: Size(30.0, 50.0),
                         backgroundColor: Colors.white, primary: Colors.black),
                   ),
                  SizedBox(
                     height: 10.0,
                   ),
                   TextButton(
                    child: Text(
                      "SIGN IN"
                     ),
                     onPressed:(){
                        _controller.login();
                     },
                     style: TextButton.styleFrom(
                         minimumSize: Size(30.0, 50.0),
                         backgroundColor: Colors.black, primary: Colors.white),
                   ),
                 ],
             ),
              )
                
                ],
              ),
            ),
          
          ],
        );
  
  }
}