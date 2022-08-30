import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytest/app/modules/screens/home/controllers/home_controller.dart';


class CardProduct extends StatelessWidget {
  const CardProduct({
    Key key,
      this.controller,
      this.index,
  }) : super(key: key);
  final HomeController controller;
  final int index;


  @override
  Widget build(BuildContext context) {
    return Container(
        padding: index.isEven ? EdgeInsets.only(left: 2, top: 5, bottom:5) :  EdgeInsets.only(right: 2, top: 5, bottom: 5),
        width: 180,
        child: Column(
          children: [
            if(!index.isEven)
           SizedBox(height: 0),
            Hero(
              tag: "tag$index",
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Stack(
                    children: [
                      Image.asset(
                          controller.listProduct.value[index].image,
                          width: 170,
                          height: 200,
                          fit: BoxFit.cover
                      ),
                      Container(
                        child: Positioned(
                          top: 170,
                          left: 15,
                          child: Text( "\$"+controller.listProduct.value[index].price.toStringAsFixed(2), style: TextStyle(color: Colors.white),)),
                      ),
                                    Positioned(
                                top: 140,
                                left: 10,
                                child:  Container(
                                  height: 25,
                                  width: 70,
                                  decoration: BoxDecoration(
               color: (!index.isEven) ? Colors.red : Colors.deepPurpleAccent,
               borderRadius: const BorderRadius.all(Radius.circular(20))
                                  ),
                           child: Center(
                             child: Text(
                              (!index.isEven) ?
                             controller.listProduct.value[index].mark : controller.listProduct.value[index].mark1 ,
                                style: GoogleFonts.montserrat(
              textStyle:  TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color:   Colors.white
                 
              ),
            ),
                             ),
                           ),
                        
                         ),),
                
                    ],
                  ),
                ),
            ),
          ],
        )
    );
  }
}