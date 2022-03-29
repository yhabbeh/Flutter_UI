

import 'package:flutter/material.dart';

Widget buildAvailableCircle({required String imgPath, required String name,required bool available}){
  return Material(

    child:Column(
      children: [
          InkWell(onTap: (){}, child: Container(
            width: 50,
              height: 50,
              decoration:   BoxDecoration(
            borderRadius: BorderRadius.circular(25),
                image:  DecorationImage(image: AssetImage(imgPath),fit: BoxFit.cover,)
              )
              )
  ),
          Row(
            children: [
              Text(name,style: const TextStyle(color: Colors.black, fontSize: 15),),
              Container(
                width: 10,height: 10,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                    color:available?Colors.green:Colors.orange)
                  //available?Colors.green:Colors.orange
              )
            ],
          )
      ],
    ),

  );


}
