import 'package:flutter/material.dart';

Widget buildFoodCard(
    {required width, required height, required String imgPath}) {
  return Material(
    elevation:20,
     borderRadius: BorderRadius.circular(15),
     child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      width: width / 3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Center(
            child: Image(
              image: AssetImage(imgPath),
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          const Text("Strawberry cream waffle", style: TextStyle(height: 1.1,fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          const Text("starting text "),

          const Text("\$34",style: TextStyle(fontSize: 20)),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Icon(Icons.contacts, color: Color(0xfffd7465),),
                SizedBox(width: 10),
                Text("21Kal"),
                /*
                * please tell to stop coding i am tired i was */
              ],
            ),
          )
        ],
      ),
    ),
  );
}




