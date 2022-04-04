import 'package:flutter/material.dart';
import 'package:mian/Gourmettakeaway/Widget/build_menu_card.dart';

class HomePageGourmet extends StatefulWidget {
  const HomePageGourmet({Key? key}) : super(key: key);

  @override
  State<HomePageGourmet> createState() => _HomePageGourmetState();
}

class _HomePageGourmetState extends State<HomePageGourmet>
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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        body: ListView(
      shrinkWrap: true,
      children: [
        Stack(
          children: [
            Container(
              width: width,
              height: height * width * 0.0007,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 6,
                      spreadRadius: 2),
                ],
                color: Colors.white,
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.settings, color: Colors.grey),
              ),
            ),
            Positioned(
                top: 30,
                left: 20,
                right: 20,
                child: Row(
                  children: [
                    Container(
                        height: height * width * 0.0004,
                        width: width * height * 0.0004,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(width * height * 0.0002),
                          image: const DecorationImage(
                              image: AssetImage("assets/chris.jpg")),
                        )),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Jacob Coleman",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffc69c0f),
                              fontSize: 30),
                        ),
                      ],
                    )
                  ],
                ))
          ],
        ),
        TabBar(
          controller: tabController,
          indicatorColor: Color(0xffc69c0f),
          indicatorSize: TabBarIndicatorSize.label,
          labelColor: Color(0xffc69c0f),
          tabs: const [
            Tab(
              child: Text(
                "Guess you like",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Tab(
              child: Text(
                "News",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Tab(
              child: Text(
                "Coupon",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        Container(
          height: 350,
          child: ListView.separated(
            shrinkWrap: true,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(height: 10);
              },
              itemCount: 5,
              itemBuilder: (context, index) => build_manu_car(
                  width: width,
                  height: height,
                  context: context,
                  imgPath: "assets/bur_2.jpg",
                  menuName: "chease burger",
                  rate: index + 1 % index*0.1,
                  details:
                      "a dish consisting of a flat round cake of minced beef, or sometimes another savoury ingredient,"
                      " that is fried or grilled and served in a split bun or roll with various condiments and toppings.")),
        ),
      ],
    ));
  }
}
