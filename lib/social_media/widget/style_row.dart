import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget firstStyleRow(
    {required width,
    required String imgPath1,
    required String imageDescription,
    required String avatarImg,
      required bool longShort

    }) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        height: longShort?300:200,
        width: (width - 50) / 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image:
              DecorationImage(image: AssetImage(imgPath1), fit: BoxFit.cover),
        ),
      ),
      Container(
        height: 60,
        width: (width - 50) / 2,
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            Text(
              imageDescription,
              style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 15,
                  fontFamily: "Quicksand"),
            ),
          ],
        ),
      ),
      const SizedBox(height: 10,),
      Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(avatarImg), fit: BoxFit.cover),
            ),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Here Name",
                style: TextStyle(color: Colors.deepOrange),
              ),
              Text(
                "10:20 PM",
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 10,
                ),
              ),
              SizedBox(height: 40)
            ],
          )
        ],
      )
    ],
  );
}
