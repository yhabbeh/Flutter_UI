import 'package:flutter/material.dart';
import 'package:mian/furnitureApp/stateScreen.dart';
import 'package:mian/furnitureApp/widgets/confirmingDialog.dart';

import 'dashBoard.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  List<bool> available = [true, false, true, true, false];
  List<String> color = ["grey", "green", "blue", "black", "black"];
  List<String> imgpath = [
    "assets/otto2.jpeg",
    "assets/otto3.jpg",
    "assets/otto4.jpg",
    "assets/otto5.jpg",
    "assets/ottoman.jpg",
  ];
  List<int> counter = [3, 0, 1, 2, 0];
  List<String> itemName = ["Sofa", "Sofa", "Sofa", "Sofa", "Sofa"];
  List<double> price = [
    32,
    332,
    378,
    52,
    35,
  ];

  //

  double getTotal() {
    double x = 0;
    for (int i = 0; i < available.length; i++) {
      available[i] ? x += price[i] * counter[i] : null;
    }
    return x;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double total = getTotal();
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 260,
                width: double.infinity,
                color: const Color(0xFFFDD148),
              ),
              Positioned(
                bottom: 100,
                left: -200,
                child: Container(
                  width: 500,
                  height: 500,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(250),
                      color: const Color(0x5df3e997)),
                ),
              ),
              Positioned(
                right: 25,
                top: 20,
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(250),
                      color: const Color(0x5df3e997)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 15),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  color: Colors.black,
                  iconSize: 25,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DashBoard()));
                  },
                ),
              ),
              const Positioned(
                  top: 100,
                  left: 100,
                  child: Text(
                    "Shopping Cart",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  )),
              Padding(
                  padding: const EdgeInsets.only(top: 200.0),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: available.length,
                    itemBuilder: (context, index) => _buildMenueitems(
                      available: available[index],
                      color: color[index],
                      width: width,
                      imgPath: imgpath[index],
                      counter: counter[index],
                      itemName: itemName[index],
                      price: price[index],
                    ),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Total: \$' + total.toString(),
                  style: TextStyle(
                      color: Colors.grey.shade900,
                      fontSize: 20,
                      backgroundColor: Colors.red.withOpacity(0.2))),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  ConfirmingDialogButton(context: context);
                },
                /*
                * here trying to reset total of amount paying in page */
                child: Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red),
                  child: const Center(
                    child: Text(
                      "Buy Now",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                ),
              )
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DashBoard()));
                },
                icon: const Icon(Icons.shopping_basket, color: Colors.black)),
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ShoppingCart()));
                },
                icon: const Icon(Icons.shopping_cart, color: Colors.black)),
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StateScreen()));
                },
                icon: const Icon(Icons.account_box, color: Colors.black)),
          ],
        ),
      ),
    );
  }

  Widget _buildMenueitems(
      {required bool available,
      required double width,
      required String itemName,
      required String color,
      required double price,
      required String imgPath,
      required int counter}) {
    return Padding(
        padding: const EdgeInsets.all(15),
        child: Material(
          borderRadius: BorderRadius.circular(5),
          elevation: 4,
          color: Colors.white,
          child: Container(
              height: 50 + width * 0.21,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        height: 14,
                        width: 14,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: available
                                ? Colors.grey
                                : Colors.red.withOpacity(0.5)),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: width * 0.25,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage(imgPath),
                        fit: BoxFit.cover,
                      )),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 45),
                      width: width * 0.75 - 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(itemName,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: width * 0.025 + 10,
                                fontWeight: FontWeight.bold,
                              )),
                          available
                              ? Column(
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      color,
                                      style: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontSize: width * 0.02 + 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text('\$' + price.toString(),
                                        style: TextStyle(
                                          color: Colors.yellow.shade900,
                                          fontSize: width * 0.025 + 15,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                )
                              : Padding(
                                  padding: EdgeInsets.only(
                                      left: width * 0.060, top: 10),
                                  child: Container(
                                    width: 111 + width * 0.02,
                                    height: 30 + width * 0.02,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(
                                            color: Colors.red,
                                            width: 2,
                                            style: BorderStyle.solid)),
                                    child: Center(
                                      child: Text(
                                        "Find Similarity",
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: width * 0.015 + 5,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                )
                        ],
                      ),
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(10),
                      elevation: 10,
                      child: Container(
                        width: 20,
                        height: 20,
                        color: Colors.blue.withOpacity(0.15),
                        child: Text(
                          'x' + counter.toString(),
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ));
  }
}
