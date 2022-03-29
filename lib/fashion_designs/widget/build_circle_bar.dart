import 'package:flutter/material.dart';

Widget buildAvatarCircleBar(
    {required String imgPath, required bool isFollowed, required String logos}) {
  return Material(
    child: Column(
      children: [
        Stack(
          children: [
            Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                      image: AssetImage(imgPath),
                      fit: BoxFit.cover,
                    )
                )
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white
                  )
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                        image: AssetImage(logos),
                        fit: BoxFit.fitWidth,
                      )
                  )
              ),
            ),

          ],
        ),
        const SizedBox(height: 10),
        Container(
            width: 60,
            height: 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.brown),
            child: InkWell(
              onTap: isFollowed ? null : () {},
              child: Center(
                child: isFollowed
                    ? const Text(
                        "Followed",
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )
                    : const Text(
                        "Follow",
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
              ),
            )
            //available?Colors.green:Colors.orange
            )
      ],
    ),
  );
}
