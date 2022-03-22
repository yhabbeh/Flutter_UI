
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mian/home.dart';
import 'package:mian/profiletravel.dart';

import 'burgerTruck.dart';
import 'collect.dart';

class Travel extends StatefulWidget {
  const Travel({Key? key}) : super(key: key);

  @override
  State<Travel> createState() => _TravelState();
}

class _TravelState extends State<Travel> with SingleTickerProviderStateMixin {

  TabController? tabController;

  @override
  void initState(){
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    late double screenWidth = MediaQuery.of(context).size.width;


    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.grey,
        child: TabBar(
          controller: tabController,
          indicatorColor: Colors.white,
          tabs: const[
            Tab(icon: Icon(Icons.home,color: Colors.black)),
            Tab(icon: Icon(Icons.search,color: Colors.black)),
            Tab(icon: Icon(Icons.graphic_eq,color: Colors.black)),
            Tab(icon: Icon(Icons.add_circle_outline,color: Colors.black)),

          ],
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'travelogue',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 220),
                IconButton(
                  onPressed: () {},
                  iconSize: 35,
                  icon: const Icon(
                    Icons.notifications,
                    color: Colors.black38,
                  ),
                ),
                const SizedBox(width: 20),
                InkWell(
                  child: Hero(
                    tag: 'Elon_Mask pic',
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://www.businessinsider.in/photo/77782500/elon-musk-is-now-worth-100-billion-half-of-jeff-bezos.jpg?imgsize=241963'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => const ProfileTravel()));
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(25, 20, 25, 20),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade200,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 10),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.repeat,
                      color: Colors.blue,
                      size: 30,
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Maldives Trip 2018 ',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Quicksands'),
                        ),
                        Text(
                          'Add An update ',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Quicksands'),
                        ),
                      ],
                    ),
                    const SizedBox(width: 190),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Pages()));
                        },
                        icon: const Icon(Icons.arrow_forward_ios),
                        color: Colors.black),
                  ],
                ),
              ),
            ),
          ),
          _buildImage(screenWidth: screenWidth),
          _imgGallaryDetails(),
          _buildImage(screenWidth: screenWidth),
          _imgGallaryDetails(),
        ],
      ),
    );
  }

  Widget _imgGallaryDetails() {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Maui Summer 2022',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                  fontFamily: 'Quicksands',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Text(
                    'Yousef Added 50 photos',
                    style: TextStyle(
                      color: Colors.black45,
                      fontFamily: 'Quicksands',
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    '.',
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'Quicksands',
                      fontSize: 20,
                    ),
                  ),
                  Icon(
                    Icons.access_time,
                    color: Colors.grey,
                    size: 15,
                  ),
                  Text(
                    '2 hour ago',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Quicksands',
                      fontSize: 15,
                    ),
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                iconSize: 30,
                icon: const Icon(Icons.send),
                color: Colors.grey,
              ),
              IconButton(
                onPressed: () {},
                iconSize: 30,
                icon: const Icon(Icons.mode_comment_outlined),
                color: Colors.grey,
              ),
              IconButton(
                onPressed: () {},
                iconSize: 30,
                icon: const Icon(Icons.favorite_border_outlined),
                color: Colors.grey,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildImage({required double screenWidth}) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: SizedBox(
        height: 300,
        child: Row(
          children: [
            Container(
              height: 300,
              width: screenWidth * 0.6,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                  image: DecorationImage(
                      image: AssetImage('assets/beach1.jpg'),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(width: 2.0),
            Column(
              children: [
                Container(
                  height: 148,
                  width: screenWidth * 0.3,
                  decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(20)),
                      image: DecorationImage(
                          image: AssetImage('assets/beach2.jpg'),
                          fit: BoxFit.cover)),
                ),
                const SizedBox(height: 4),
                Container(
                  height: 148,
                  width: screenWidth * 0.3,
                  decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(20)),
                      image: DecorationImage(
                          image: AssetImage('assets/beach3.jpg'),
                          fit: BoxFit.cover)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
