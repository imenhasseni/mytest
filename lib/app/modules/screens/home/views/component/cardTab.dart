import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytest/app/modules/screens/home/controllers/home_controller.dart';



class CardTab extends StatelessWidget {
  const CardTab({
    Key key,
     this.controller,
     this.index,
  }) : super(key: key);

  final HomeController controller;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Obx(()=> InkWell(
      onTap: (){
        controller.selected.value = index;
      },
      child: Container( 
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
          decoration: BoxDecoration(
              color:  controller.selected.value == index
              ? Colors.black
              : Colors.white,
              border: Border.all(
                color: Colors.grey[200],
              ),
              borderRadius: const BorderRadius.all(Radius.circular(10))
          ),
          child: Text(
            controller.listGroup.value[index].name,
            style: GoogleFonts.montserrat(
              textStyle:  TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color:  controller.selected.value == index
                  ? Colors.white
                  : Colors.black,
              ),
            ),
          )
      ),
    )
    );
  }
}