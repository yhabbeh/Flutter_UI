import 'package:flutter/material.dart';

Widget build_manu_car({
  required width,
  required height,
  required BuildContext context,
  required String imgPath,
  required String menuName,
  required double rate,
  required String details,
}) {
  return Container(
    width: width,
    height: height * 0.3,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
    ),
    child: Stack(
      children: [
        Row(

          children: [
            Container(
              width: width * 0.25,
              height: width * 0.25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width * 0.15),
                  image: DecorationImage(
                      image: AssetImage(imgPath), fit: BoxFit.cover)),
            ),
            SizedBox(width: 10),
            Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  menuName,
                  style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Quicksands"),
                ),
                Row(
                  children: [
                    Icon(Icons.star,
                        color: rate >= 1 ? Colors.yellow.shade700 : Colors.grey,
                        size: 15),
                    Icon(Icons.star,
                        color: rate >= 2 ? Colors.yellow.shade700 : Colors.grey,
                        size: 15),
                    Icon(Icons.star,
                        color: rate >= 3 ? Colors.yellow.shade700 : Colors.grey,
                        size: 15),
                    Icon(Icons.star,
                        color: rate >= 4 ? Colors.yellow.shade700 : Colors.grey,
                        size: 15),
                    Icon(Icons.star,
                        color: rate >= 5 ? Colors.yellow.shade700 : Colors.grey,
                        size: 15),
                    Text(
                      ' '+rate.toString()+'.0',
                      style:   TextStyle(color: Colors.yellow.shade900),
                    )
                  ],
                ),
                const Text(
                  "About details",
                  style: TextStyle(
                  color: Colors.green, fontSize: 15, fontFamily: "Comfort"),
                ),
                Container(
                  width: width-(width * 0.35),
                   padding: const EdgeInsets.only(left: 15,right: 15),

                  child: Text(
                    details,
                    style:  TextStyle(
                        color: Colors.grey, fontSize: width*0.02, fontFamily: "Comfort"),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    Icon(Icons.confirmation_number_rounded),
                    Text("152 Kcal"),
                    Icon(Icons.place),
                    Text("15 Km"),
                    Icon(Icons.watch_later_outlined),
                    Text("26 min"),
                  ],
                )
              ],
            )
          ],
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
              width: 40,
              height: 25 ,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  color: Colors.red.shade300)),
        ),
           Positioned(
             top: -6,
          right: 0,
          // alignment: Alignment.topRight,
          child: IconButton(onPressed: (){},icon: Icon(Icons.favorite_border_outlined, color: Colors.white)),
        ),
      ],
    ),
  );
}
