 import 'package:flutter/material.dart';

Widget build_fruits_cards({
  required double width,
  required double height,
  required BuildContext context,
  required String imgPath,
  required String imgName,
  required double cost,

}) {
  return Stack(
    children: [
      SizedBox(
        width: width * 0.48,
        height: height * 0.35,
        child: Column(

          children: [

            Container(
              width: width * 0.48,
              height: height * 0.20,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(topRight: Radius.circular(30) ,topLeft: Radius.circular(30)),
                  image: DecorationImage(
                      image: AssetImage(imgPath),
                      fit: BoxFit.cover
                  )),
            ),
            Text(
              imgName,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: "Quicksands",
              ),
            ),
            Text(
              "\$"+cost.toString()+" each",
              style: const TextStyle(
                fontSize: 15,
                fontFamily: "Quicksands",
              ),
            ),

          ],
        ),
      ),
      Align(alignment: Alignment.topRight,
      child: IconButton(icon: const Icon(Icons.favorite), onPressed: () { },),)
    ],
  );
}
