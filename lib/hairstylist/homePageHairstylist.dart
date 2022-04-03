import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mian/hairstylist/Widget/build_days_bar.dart';
import 'package:mian/hairstylist/Widget/build_time_card.dart';

import 'Widget/build_barber.dart';

class HomePageHairstylist extends StatefulWidget {
  const HomePageHairstylist({Key? key}) : super(key: key);

  @override
  State<HomePageHairstylist> createState() => _HomePageHairstylistState();
}

class _HomePageHairstylistState extends State<HomePageHairstylist> {
  @override
  Widget build(BuildContext context) {
    List<String> day = ["sun", "Mon", "Tus", "Wed", "Thr", "Fri", "Sat"];
    List<String> imagpath = [
      "assets/style1.jpg",
      "assets/style2.jpg",
      "assets/style3.jpeg"
    ];
    List<String> name = ["yousef", "jhon", "chris", "mike"];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("BOOKING",
            style: TextStyle(
                color: Colors.green.shade700,
                fontWeight: FontWeight.bold,
                fontFamily: "Comfort",
                fontSize: 30)),
        centerTitle: true,
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () {}),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 10,
                      spreadRadius: 3)
                ]),
              ),
              Positioned(
                  top: 30,
                  left: 15,
                  right: 15,
                  child: SizedBox(
                    height: 50,
                    child: ListView.separated(
                      itemBuilder: (context, index) => BuildDaysBar(
                          date: index % 30 + 1, day: day[index % day.length]),
                      itemCount: day.length * 3,
                      shrinkWrap: true,
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(width: 20);
                      },
                      scrollDirection: Axis.horizontal,
                    ),
                  )),
            ],
          ),
          Text(
            "Hagorapt",
            style: TextStyle(
              fontFamily: "Quicksands",
              letterSpacing: 2,
              height: 2,
              color: Colors.green.shade900.withOpacity(0.5),
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: const [
                Text(
                  "Beard\t",
                  style: TextStyle(fontSize: 20, fontFamily: "Comfort"),
                ),
                Text(
                  " 15\$  x\t\t",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Comfort",
                  ),
                ),
                Text(
                  "Crew cut\t",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Comfort",
                  ),
                ),
                Text(
                  " 35\$  x\t",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Comfort",
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => GetBarBer(
                      index: index,
                      name: name[index % name.length],
                      imgPath: imagpath[index % imagpath.length],
                    ),
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 15,
                  );
                },
                itemCount: 6),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 35,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => BuildTimeCard(time: index),
                separatorBuilder:(BuildContext context, int index){
                   return SizedBox(width: 10);

                },
                itemCount: 10),
          )
        ],
      ),
    );
  }
}
