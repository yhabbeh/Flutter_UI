import 'dart:html';

import 'package:flutter/material.dart';
import 'package:mian/furnitureApp/productDescription.dart';
import 'package:mian/furnitureApp/shoppingCart.dart';
import 'package:mian/furnitureApp/stateScreen.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);


  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }
  List<bool> isFavorite = [true,true,false,true,true,true,false,true];
  bool changFavourite(getColor) {
    setState(() {
      getColor = !getColor;
    });
    return getColor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          InkWell(
                            child: Hero (
                              tag: 'Asd',
                              child: Container(
                                alignment: Alignment.topLeft,
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    image: const DecorationImage(
                                      image: AssetImage("chris.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                    border: Border.all(
                                        color: Colors.white,
                                        style: BorderStyle.solid,
                                        width: 2)),
                              ),
                            ),
                            onTap: (){

                                  }
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 120,
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.menu),
                              iconSize: 30,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          'Hello , Yousef',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            fontFamily: "Quicksand",
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          'What do you want to buy? ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            fontFamily: "Quicksand",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Material(
                          elevation: 10,
                          borderRadius: BorderRadius.circular(5),
                          child: TextFormField(
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.orangeAccent,
                                  size: 30,
                                ),
                                hintText: 'Search',
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: "Quicksand")),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Stack(
                        children: [
                          SizedBox(height: 10),
                          Material(
                            elevation: 11,
                            color: Colors.white,
                            child: SizedBox(
                              height: 75,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 75,
                                  width: MediaQuery.of(context).size.width / 6,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 50,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                          image: AssetImage("assets/sofas.png"),
                                          fit: BoxFit.fitHeight,
                                        )),
                                      ),
                                      const Text(
                                        'Sofas',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 75,
                                  width: MediaQuery.of(context).size.width / 6,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 50,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                          image:
                                              AssetImage("assets/wardrobe.png"),
                                          fit: BoxFit.fitHeight,
                                        )),
                                      ),
                                      Text(
                                        'wardrobes',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 75,
                                  width: MediaQuery.of(context).size.width / 6,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 50,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                          image: AssetImage("assets/desks.png"),
                                          fit: BoxFit.fitHeight,
                                        )),
                                      ),
                                      const Text(
                                        'Desks',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 75,
                                  width: MediaQuery.of(context).size.width / 6,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 50,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                          image:
                                              AssetImage("assets/dressers.png"),
                                          fit: BoxFit.fitHeight,
                                        )),
                                      ),
                                      const Text(
                                        'Dressers',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      _itemCard(imgPath: "assets/ottoman.jpg",title: 'FinnNavian',cardIndex: 0),
                      _itemCard(imgPath: "assets/anotherchair.jpg",title: 'Chair',cardIndex: 2),
                      _itemCard(imgPath: "assets/chair.jpg",title: 'Sofa',cardIndex: 3),
                      _itemCard(imgPath: "assets/chair.jpg",title: 'Sofa',cardIndex: 4),
                      _itemCard(imgPath: "assets/ottoman.jpg",title: 'test1',cardIndex: 5),
                      _itemCard(imgPath: "assets/ottoman.jpg",title: 'test2',cardIndex: 6),
                    ],
                  )
                ],
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

  Widget _itemCard({required String title, required String imgPath , required int cardIndex}) {
    return Padding(
        padding: const EdgeInsets.only(left: 15, right: 15,top: 15),
        child: Container(
          height: 150,
            width: double.infinity,
          color: Colors.white,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 150,
                  width:140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imgPath),
                      fit: BoxFit.cover
                    ),
                  ),
              ),
              SizedBox(width: 10,),
              Container(
                width: MediaQuery.of(context).size.width -190,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start
                  ,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(title,style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          fontFamily: "Quicksand"

                        ),
                        ),
                        SizedBox(width: 20,),
                        Material(
                          elevation: isFavorite[cardIndex]?5.0:20.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.grey.withOpacity(0.5) )
                            ),
                            child: IconButton(
                                onPressed: ()
                                {
                                  isFavorite[cardIndex] =changFavourite(isFavorite[cardIndex]);
                            },
                                icon: Icon(isFavorite[cardIndex]?Icons.favorite : Icons.favorite_border_outlined)
                                , color: isFavorite[cardIndex]?Colors.red : Colors.grey ),
                          ),
                        ),//Icon
                      ],
                    ),
                    const SizedBox(height  :2,),
                    Container(
                      width: 400,
                      alignment: Alignment.topLeft,
                      child: const Text(
                        ' Signature Design by Ashley Draycoll Contemporary Double Reclining Manual Loveseat with Center Console, Dark Gray',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                        color: Colors.grey ,fontSize:17
                      ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        const SizedBox(width: 10),
                        Container(
                          height: 40,
                          width: 100,
                          color: const Color(0xF1ada244) ,
                          child: const Center(
                            child: Text(
                              '\$89',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight:FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width*0.35 ,
                          color: Color(0xFFfcDF14),
                          child: MaterialButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const ProductDescriptions()));
                            },
                            child: const Center(
                              child: Text(
                                'Add to Cart',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight:FontWeight.bold),
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                    Container(
                      height: 1.5,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.black54,
                    )


                  ],
                ),
              ),

            ],
          ),


        )

    );
  }
}
