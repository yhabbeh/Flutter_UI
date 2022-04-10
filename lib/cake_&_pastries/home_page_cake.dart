import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mian/cake_&_pastries/widget/build_food_card.dart';

class HomePageCake extends StatefulWidget {
  const HomePageCake({Key? key}) : super(key: key);

  @override
  State<HomePageCake> createState() => _HomePageCakeState();
}

class _HomePageCakeState extends State<HomePageCake>
    with SingleTickerProviderStateMixin {
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
        children: [
          Stack(
            children: [
              Container(
                height: height * 0.35,
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.8),
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(75)),
                ),
              ),
              Container(
                height: height * 0.25,
                decoration: BoxDecoration(
                  color: Color(0xfffd7465),
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(75)),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 125, 20, 0),
                child: Container(
                  height: 40,
                  decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(30)),
                    color: Colors.white,
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 30),
                        border: InputBorder.none,
                        hintText: "Search"),
                  ),
                ),
              ),
            ],
          ),
          TabBar(
              controller: tabController,
              padding: EdgeInsets.symmetric(horizontal: 20),
              labelColor: Colors.black,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w300),
              unselectedLabelColor: Colors.grey.shade400,
              indicatorColor: Color(0xfffd7465),
              tabs: const [
                Tab(
                  text: "DESSERT",
                ),
                Tab(
                  text: "PIZZA",
                ),
                Tab(
                  text: "BARBECUE",
                ),
                Tab(
                  text: "BURGER",
                ),
              ]),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: width,
            height: 270,
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                buildFoodCard(
                    height: height, width: width, imgPath: "assets/steak.png"),
                const SizedBox(
                  width: 15,
                ),
                buildFoodCard(
                    height: height, width: width, imgPath: "assets/steak.png"),
                const SizedBox(
                  width: 15,
                ),
                buildFoodCard(
                    height: height, width: width, imgPath: "assets/steak.png"),
                const SizedBox(
                  width: 15,
                ),
                buildFoodCard(
                    height: height, width: width, imgPath: "assets/steak.png"),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text("Recommended",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Quicksands")),
          SizedBox(
            width: width,
            height: 250,
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              shrinkWrap: true,
              children: [
                buildFoodCard(
                    height: height, width: width, imgPath: "assets/steak.png"),
                const SizedBox(
                  height : 15,
                ),
                buildFoodCard(
                    height: height, width: width, imgPath: "assets/steak.png"),
                const SizedBox(
                  height : 15,
                ),
                buildFoodCard(
                    height: height, width: width, imgPath: "assets/steak.png"),
                const SizedBox(
                  height : 15,
                ),
                buildFoodCard(
                    height: height, width: width, imgPath: "assets/steak.png"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
