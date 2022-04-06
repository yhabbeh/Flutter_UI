 import 'package:flutter/material.dart';

import 'build_card_plant.dart';

class HomePagePlants extends StatefulWidget {
  const HomePagePlants({Key? key}) : super(key: key);

  @override
  State<HomePagePlants> createState() => _HomePagePlantsState();
}

class _HomePagePlantsState extends State<HomePagePlants>
    with SingleTickerProviderStateMixin {

  List<String> imgPath = [
      "assets/aloevera.png",
    "assets/ficus.png",
    "assets/flowerplant.png",
    "assets/smallplant.png",
    "assets/whiteplant.png"

  ];
    List<String> imgName = [
      "aloevera",
    "ficus",
    "flowerplant",
    "smallplant",
    "whiteplant"

  ];



  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        padding:  EdgeInsets.all(20.0),
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.menu, color: Colors.black),
                  iconSize: 20,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_cart, color: Colors.black),
                  iconSize: 20,
                ),
              ],

          ),
          const Text("Top Picks",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                fontFamily: "Quicksands",
              )),
          const SizedBox(height: 20),
          TabBar(
              controller: tabController,
              labelColor: Colors.black,
              labelStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              unselectedLabelColor: Colors.grey,
              unselectedLabelStyle: const TextStyle(fontSize: 15,fontWeight: FontWeight.w300),
              indicatorColor: Colors.green,
              tabs: const [
                Tab(
                  text: "Top",
                ),
                Tab(
                  text: "Outdoor",
                ),
                Tab(
                  text: "Indoor",
                ),
                Tab(
                  text: "Plants",
                ),


              ]),
          const SizedBox(height: 20),
            Container(
              height: height*0.5,
              child: ListView.separated(
                separatorBuilder:(context, index) => SizedBox(width: 20) ,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
               itemBuilder: (BuildContext context , int index){
                  return  buildCardPlant(height: height, width: width,imgPath:imgPath[index],imgName: imgName[index]);
               }, itemCount: 5, 
              ),
            )



        ],
      ),
    );
  }
}
