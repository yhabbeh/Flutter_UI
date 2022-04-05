
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:mian/fruits_social/widget/build_fruits_card.dart';

class HomePageFruits extends StatefulWidget {
  const HomePageFruits({Key? key}) : super(key: key);

  @override
  State<HomePageFruits> createState() => _HomePageFruitsState();
}

class _HomePageFruitsState extends State<HomePageFruits>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    List<String> imgPath = [
      "assets/picone.jpeg",
      "assets/pictwo.jpeg",
      "assets/picthree.jpeg",
      "assets/picfour.jpeg",
      "assets/picfive.jpeg"
    ];
    List<String> imgName = [
      "Orange Juice",
      "kiwi Juice",
      "Banana Juice",
      "Pineapple Juice",
      "Lemon Juice",
    ];
    List<double> cost = [15.15, 15.50, 30.15, 41.20, 32.60];

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SizedBox(
        width: width,
        height: height,
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(15),
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage("assets/face.jpg"),
                        fit: BoxFit.cover,
                      )),
                ),
                IconButton(
                  onPressed: () {

                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            content:
                                const Text("Please confirm you dialog boxing "),
                            title: const Text("Alert dialog"),
                            elevation: 10,
                            actions: [
                              InkWell(
                                child: Container(
                                  height: 30,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "OK",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                              )
                            ],
                          );
                        });
                  },
                  icon: const Icon(Icons.menu),
                  iconSize: 30,
                ),
              ],
            ),
            const SizedBox(height: 20),
            TabBar(
              unselectedLabelColor: Colors.grey.withOpacity(0.4),
              labelColor: Colors.black,
              controller: tabController,
              labelStyle: const TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelStyle:
                  const TextStyle(fontWeight: FontWeight.w300),
              indicatorColor: Colors.green,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: const [
                Tab(
                    child: Text(
                  "Fruits",
                  style: TextStyle(fontSize: 30, fontFamily: "Quicksands"),
                )),
                Tab(
                    child: Text(
                  "Bread",
                  style: TextStyle(fontSize: 30, fontFamily: "Quicksands"),
                )),
                Tab(
                    child: Text(
                  "Drinks",
                  style: TextStyle(fontSize: 30, fontFamily: "Quicksands"),
                )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: SizedBox(
                    height: height,
                    width: width * .45,
                    child: ListView.separated(
                        itemBuilder: (context, index) => build_fruits_cards(
                            width: width,
                            height: height,
                            context: context,
                            imgPath: imgPath[index],
                            imgName: imgName[index],
                            cost: cost[index]),
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(height: 10);
                        },
                        itemCount: 5),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: SizedBox(
                    height: height,
                    width: width * .45,
                    child: ListView.separated(
                        itemBuilder: (context, index) => build_fruits_cards(
                            width: width,
                            height: height,
                            context: context,
                            imgPath: imgPath[imgPath.length - index - 1],
                            imgName: imgName[imgName.length - index - 1],
                            cost: cost[cost.length - index - 1]),
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(height: 10);
                        },
                        itemCount: 5),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Material(
        elevation: 3,
        child: Container(
          padding: EdgeInsets.only(left: 20,right: 20),
          width: width,
          height: 60,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Filter",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Quicksands",
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,fontSize: 20),
                  )
              ),
              IconButton(onPressed: (){}, icon: const Icon(Icons.search),iconSize: 30,),
              IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline),iconSize: 30,),
              Container(
                width: 60,
                  height: 30,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text("15",style: TextStyle(
                      color: Colors.white, fontSize: 15,
                    ),),
                    Icon(Icons.shopping_cart,color: Colors.white,size: 20,)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
