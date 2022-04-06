import 'package:flutter/material.dart';

Widget buildCardPlant(
    {required double width,
    required double height,
    required String imgPath,
    required String imgName}) {
  return SizedBox(
    width: 250,
    height: 370  ,
    child: ListView(
      shrinkWrap: true,
      children: [
        Stack(children: [
          Container(
            width: 250,
            height: 320,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.green.shade700,
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Column(
                children: const [
                  Text("From", style: TextStyle(fontSize: 15, color: Colors.white)),
                  Text("\$243",
                      style: TextStyle(fontSize: 15, color: Colors.white)),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Image(
              image: AssetImage(imgPath),
              width: 200,
              height: 300,
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 20,
              top: 210 ,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "outdoor",
                  style:
                      TextStyle(fontSize: 15, color: Colors.white.withOpacity(0.7)),
                ),
                Text(
                  imgName,
                  style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10,),
                Container(
                  width:200,
                  padding: const EdgeInsets.only(left:20 ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 35,height: 35,
                        decoration: BoxDecoration(border: Border.all(color: Colors.white.withOpacity(0.4)),
                        borderRadius: BorderRadius.circular(10)
                        ),
                        child: Icon(Icons.wb_sunny,color: Colors.white.withOpacity(0.4),

                        ),
                      ),
                      Container(
                          width: 35,height: 35,
                          decoration: BoxDecoration(border: Border.all(color: Colors.white.withOpacity(0.4)),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Icon(Icons.water_drop,color: Colors.white.withOpacity(0.4),)),
                      Container(
                          width: 35,height: 35,
                          decoration: BoxDecoration(border: Border.all(color: Colors.white.withOpacity(0.4)),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Icon(Icons.whatshot_sharp,color: Colors.white.withOpacity(0.4),)),
                      Container(
                          width: 35,height: 35,
                          decoration: BoxDecoration(border: Border.all(color: Colors.white.withOpacity(0.4)),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Icon(Icons.question_mark,color: Colors.white.withOpacity(0.4),)),
                    ],
                  ),
                )
              ],
            ),
          )
        ]),
      ],
    ),
  );
}
