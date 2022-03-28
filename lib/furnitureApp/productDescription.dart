import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mian/furnitureApp/shoppingCart.dart';
import 'package:mian/furnitureApp/stateScreen.dart';

import 'dashBoard.dart';

class ProductDescriptions extends StatefulWidget {
  const ProductDescriptions({Key? key}) : super(key: key);

  @override
  State<ProductDescriptions> createState() => _ProductDescriptionsState();
}

class _ProductDescriptionsState extends State<ProductDescriptions>with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }
  int photoIndex = 0;

  List<String> photos = [
    "assets/ottoman.jpg",
    "assets/otto2.jpeg",
    "assets/otto3.jpg",
    "assets/otto4.jpg",
    "assets/otto5.jpg",
  ];

  bool isFavorite = true;

  bool changFavourite(getColor) {
    setState(() {
      getColor = !getColor;
    });
    return getColor;
  }

  void _previousImg() {
    setState(() {
      photoIndex = photoIndex > 0 ? photoIndex - 1 : photos.length - 1;
    });
  }

  void _nextImg() {
    setState(() {
      photoIndex = photoIndex < photos.length - 1 ? photoIndex + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(photos[photoIndex]),
                            fit: BoxFit.cover)),
                  ),
                  GestureDetector(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 275,
                      color: Colors.transparent,
                    ),
                    onTap: _nextImg,
                  ),
                  GestureDetector(
                    child: Container(
                      width: MediaQuery.of(context).size.width / 4,
                      height: 275,
                      color: Colors.transparent,
                    ),
                    onTap: _previousImg,
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const DashBoard()));
                          },
                          icon: const Icon(Icons.arrow_back_ios),
                          color: Colors.black,
                          iconSize: 30,
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: IconButton(
                              onPressed: () {
                                isFavorite = changFavourite(isFavorite);
                              },
                              iconSize: 30,
                              icon: Icon(isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_border_outlined),
                              color: isFavorite ? Colors.red : Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      top: 270,
                      left: MediaQuery.of(context).size.width / 2 - 30,
                      child: Row(
                        children: [
                          SelectedPhoto(
                            numOfDots: photos.length,
                            photoIndex: photoIndex,
                          )
                        ],
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 15),
                    Text(
                      "Alcide Number 2XBD23",
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontFamily: "Quicksand",
                          fontSize: 15),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "Finn Navian-Safa",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "asdasdlkndkf j LdjflkjasdfjpoK\nPSD apsd ASD PSADF PO",
                            style: TextStyle(
                                color: Colors.grey.shade500,
                                fontFamily: "Quicksand",
                                fontSize: 15),
                          ),
                          const SizedBox(width: 15),
                          const Text(
                            "\$284",
                            style: TextStyle(
                                color: Colors.black87,
                                fontFamily: "Quicksand",
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Colour ",
                      style: TextStyle(color: Colors.black87, fontSize: 25),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade900,
                                borderRadius: BorderRadius.circular(20)),
                            child: MaterialButton(
                              elevation: 6,
                              onPressed: () {},
                            ),
                          ),
                          const SizedBox(width: 25),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade400,
                                borderRadius: BorderRadius.circular(20)),
                            child: MaterialButton(
                              elevation: 6,
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "MATERIAL",
                      style: TextStyle(color: Colors.black87, fontSize: 25),
                    ),
                    Material(
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: const [
                            SizedBox(
                              height: 50,
                              width: 60,
                              child: Icon(Icons.time_to_leave,
                                  color: Colors.grey, size: 40),
                            ),
                            Text(
                              "x30 ",
                              style: TextStyle(color: Colors.black, fontSize: 30),
                            ),
                            SizedBox(
                              height: 50,
                              width: 60,
                              child:
                                  Icon(Icons.timer, color: Colors.grey, size: 40),
                            ),
                            Text(
                              "x25 ",
                              style: TextStyle(color: Colors.black, fontSize: 30),
                            ),
                            SizedBox(
                              height: 50,
                              width: 60,
                              child: Icon(Icons.monetization_on,
                                  color: Colors.grey, size: 40),
                            ),
                            Text(
                              "x10 ",
                              style: TextStyle(color: Colors.black, fontSize: 30),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Material(
                        elevation: 15,
                        child: Row(
                          children: [
                            SizedBox(
                                width: 100,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.shopping_cart),
                                    color: Colors.deepOrangeAccent,
                                    iconSize: 30)),
                            SizedBox(
                                width: 100,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.account_box),
                                    color: Colors.blue,
                                    iconSize: 30)),
                            InkWell(
                              child: Container(
                                padding: EdgeInsets.all(10),
                                color: Colors.yellow,
                                width: MediaQuery.of(context).size.width - 260,
                                height: 60,
                                child:  Center(
                                  child: Text("Add to Cart",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30,
                                          color: Colors.blueGrey.shade300)),
                                ),
                              ),
                              onTap: () {},
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.grey,
        child: TabBar(
          controller: tabController,
          indicatorColor: Colors.white,
          tabs: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const DashBoard()));
                },
                icon: Icon(Icons.shopping_basket, color: Colors.black)),
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const ShoppingCart()));
                },
                icon: const Icon(Icons.shopping_cart, color: Colors.black)),
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const StateScreen()));
                },
                icon: Icon(Icons.account_box, color: Colors.black)),
          ],
        ),
      ),
    );
  }
}

class SelectedPhoto extends StatelessWidget {
  final int numOfDots;

  final int photoIndex;

  const SelectedPhoto({required this.numOfDots, required this.photoIndex});

  Widget _inactivePhoto() {
    return Padding(
      padding: const EdgeInsets.only(left: 3, right: 3),
      child: Container(
        width: 8,
        height: 8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4), color: Colors.grey),
      ),
    );
  }

  Widget _activePhoto() {
    return Padding(
      padding: const EdgeInsets.only(left: 3, right: 3),
      child: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.yellow,
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 1.0,
                blurRadius: 2.0,
              )
            ]),
      ),
    );
  }

  List<Widget> _buildDots() {
    List<Widget> dots = [];
    for (int i = 0; i < numOfDots; ++i) {
      dots.add(i == photoIndex ? _activePhoto() : _inactivePhoto());
    }
    return dots;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center, children: _buildDots()),
    );
  }
}
