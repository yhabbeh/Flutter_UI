import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mian/shoppingApp/home_page_shopping.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    List<String> imagepath = [
      "assets/pic1.jpeg",
      "assets/pic2.jpeg",
      "assets/pic3.jpeg",
      "assets/pic4.jpeg",
      "assets/pic5.jpeg",
      "assets/pic6.jpeg",
    ];

    double width = MediaQuery
        .of(context)
        .size
        .width;
    double height = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
        body: ListView(children: [
          Stack(
            children: [
              Image(
                image: const AssetImage("assets/pic4.jpeg"),
                fit: BoxFit.cover,
                height: height * 0.4,
                width: width,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                    padding: const EdgeInsets.all(20),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePageShopping()));
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 20,
                    )),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    alignment: Alignment.center,
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: IconButton(
                      padding: const EdgeInsets.all(5),
                      onPressed: () {},
                      icon: const Icon(
                          Icons.shopping_basket, color: Colors.black),
                      iconSize: 20,
                    ),
                  ),
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "cutting-edge item to stay in style, perfect for all of your moments ",
              style: TextStyle(fontSize: 20, color: Colors.black),
              // textAlign: TextAlign.center,
            ),
          ),
          Container(
            height: 130,
            padding: const EdgeInsets.all(20),
            child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(width * 0.1),
                            image: DecorationImage(
                                image: AssetImage(imagepath[index]),
                                fit: BoxFit.cover)),
                      ),
                    ),
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(width: 20);
                },
                itemCount: 5),
          ),
          TabBar(
              controller: tabController,
              labelColor: Colors.black,
              labelStyle: const TextStyle(
                fontWeight: FontWeight.w800,
              ),
              unselectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.w300,
              ),
              tabs: const [
                Tab(
                  child: Text(
                    "All",
                    style: TextStyle(fontSize: 30, fontFamily: "Quicksands"),
                  ),
                ),
                Tab(
                  child: Text(
                    "Coats",
                    style: TextStyle(fontSize: 30, fontFamily: "Quicksands"),
                  ),
                ),
                Tab(
                  child: Text(
                    "Jackets",
                    style: TextStyle(fontSize: 30, fontFamily: "Quicksands"),
                  ),
                ),
                Tab(
                  child: Text(
                    "Blazers",
                    style: TextStyle(fontSize: 30, fontFamily: "Quicksands"),
                  ),
                ),
                Tab(
                  child: Text(
                    "Dress",
                    style: TextStyle(fontSize: 30, fontFamily: "Quicksands"),
                  ),
                ),
              ]),

          Container(
            width: width,
            height: height,
            padding: EdgeInsets.all(20),
            child: ListView.separated(itemBuilder: (context, index) =>
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: height/5,
                        width: width/2,
                        decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(imagepath[index]), fit: BoxFit.cover
                          )
                        ),

                      ), Text("\$234",style: TextStyle(fontSize: 20),),
                    ],
                  ),
                  Column (
                   crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: height/5,
                        width: width/2,
                        decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(imagepath[index]),
                            fit: BoxFit.cover
                          )
                        ),

                      ), Text("\$234",style: TextStyle(fontSize: 20),),
                    ],
                  ),

                ],
              ),

              itemCount: 5 ,
                separatorBuilder: (BuildContext context, int index){return const SizedBox(height: 5);},
            ),
          )
        ]));
  }
}
