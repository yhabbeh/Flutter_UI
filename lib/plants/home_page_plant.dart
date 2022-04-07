import 'package:flutter/material.dart';
import 'build_card_plant.dart';

class HomePagePlants extends StatefulWidget {
  const HomePagePlants({Key? key}) : super(key: key);

  @override
  State<HomePagePlants> createState() => _HomePagePlantsState();
}

class _HomePagePlantsState extends State<HomePagePlants>
    with SingleTickerProviderStateMixin {
  late ScrollController _scrollController;

  List allDescriptions = [
    'Aloe vera is a succulent plant of the genus Aloe. I\'ts medicinal uses and air purifying ability make it the plant that you shouldn\'t live without.',
    'Some other description',
    'Third description',
    'fourth description',
    'fifth description',
    'sixth description',
  ];
  late String description;

  List<String> imgPath = [
    "assets/aloevera.png",
    "assets/ficus.png",
    "assets/flowerplant.png",
    "assets/smallplant.png",
    "assets/whiteplant.png"
  ];
  List<String> imgName = [
    "Aloevera",
    "Ficus",
    "Flowerplant",
    "Smallplant",
    "Whiteplant"
  ];

  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(changeDesc);

    setState(() {
      description = allDescriptions[0];
    });
    tabController = TabController(length: 4, vsync: this);
  }

  changeDesc() {
    var value = _scrollController.offset.round();
    var descIndex = (value / 225).round();
    setState(() {
      description = allDescriptions[descIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.menu, color: Colors.black),
                iconSize: 20,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart, color: Colors.black),
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
              labelStyle:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              unselectedLabelColor: Colors.grey,
              unselectedLabelStyle:
                  const TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
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
          SizedBox(
            height: 390,
            child: ListView.separated(
              controller: _scrollController,
              separatorBuilder: (context, index) => const SizedBox(width: 20),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return buildCardPlant(
                    context: context,
                    index: index,
                    height: height,
                    width: width,
                    imgPath: imgPath[index],
                    imgName: imgName[index],
                    cost: index * 4 + 15,
                    typeOfPlant: 'Indoor');
              },
              itemCount: 5,
            ),
          ),
          const Text(
            "Description",
            style: TextStyle(
                fontSize: 40,
                color: Colors.black,
                fontFamily: "Quicksands",
                fontWeight: FontWeight.bold),
          ),
          Text(
            description,
            style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontFamily: "Quicksands",
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
