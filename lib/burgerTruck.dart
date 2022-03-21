import 'dart:math';
import 'package:flutter/material.dart';
import 'package:mian/main.dart';
import 'package:mian/restaurant.dart';
import 'package:mian/resturent.dart';

import 'home.dart';

class BurgerTruck extends StatefulWidget {
  const BurgerTruck({Key? key}) : super(key: key);

  @override
  State<BurgerTruck> createState() => _BurgerTruck();
}

class _BurgerTruck extends State<BurgerTruck>  with SingleTickerProviderStateMixin {
  late AnimationController animationControler;
  late Animation courselaAnimation;

  @override
  void initState() {
    super.initState();
    animationControler =
        AnimationController(duration: Duration(seconds: 18), vsync: this);
    courselaAnimation =
    IntTween(begin: 0, end: photos.length - 1).animate(animationControler)
      ..addListener(() {
        setState(() {
          photoIndex = courselaAnimation.value;
        });
      });
    animationControler.repeat();
  }

  @override
  void dispose() {
    super.dispose();
    animationControler.dispose();
  }


  int photoIndex = 0;
  List<String> photos = [
    "assets/bur_1.jpg",
    "assets/bur_2.jpg",
    "assets/bur_3.jpg",
    "assets/bur_4.jpg",
    "assets/bur_5.jpg",
  ];


  void _previousImage() {
    setState(() {
      photoIndex = photoIndex > 0 ? photoIndex - 1 : photos.length - 1;
    });
  }

  void _nextImage() {
    setState(() {
      photoIndex = photoIndex < photos.length - 1 ? photoIndex + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context){

    return Scaffold(
        body: ListView(
      shrinkWrap: true,
      children: [
        Column(
          children: [
            Stack(children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5)),
                    image: DecorationImage(
                        image: AssetImage(photos[photoIndex]),
                        fit: BoxFit.cover)),
                height: 300,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {
                        color:
                        Colors.red;
                      },
                      icon: const Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      )),
                ],
              ),
              Positioned(
                  top: 285,
                  left: 25.0,
                  right: 25.0,
                  child: SelectPhoto(
                      numberOfDots: photos.length, photoIndex: photoIndex)),
            ]),
            const SizedBox(height: 15),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 130),
                  child: Text(
                    'Open Now Until 7pm',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.grey,
                        fontFamily: 'Montserrat',
                        decoration: TextDecoration.underline),
                  ),
                ),
                SizedBox(height: 15),
                const Text(
                  'Burger Spice',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 25,
                    color: Colors.black,
                    fontFamily: 'Quicksands',
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Ean-karem st.& building no. 9',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 15,
                        color: Colors.black54,
                        fontFamily: 'Quicksands',
                      ),
                    ),
                    SizedBox(width: 30),
                    Icon(Icons.location_on),
                    Text(
                      '7Km Away',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 15,
                        color: Colors.black54,
                        fontFamily: 'Quicksands',
                      ),
                    ),
                    SizedBox(width: 20),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.wifi_outlined,
                      color: Colors.green,
                    ),
                    Text(
                      'Location Confirmed by 3 users Today',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 12,
                        color: Colors.green,
                        fontFamily: 'Quicksands',
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(right: MediaQuery.of(context).size.width-200),
              child: const Text(
                'Featured Items',
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 15,
                    color: Colors.grey,
                    fontFamily: 'Quicksands',
                    decoration: TextDecoration.underline),
              ),
            ),
            const SizedBox(height: 10),
            _buildListItems(photos[0]),
            const SizedBox(height: 10),
            _buildListItems(photos[1]),
            const SizedBox(height: 10),
            _buildListItems(photos[2]),
            const SizedBox(height: 10),
            _buildListItems(photos[3]),
            const SizedBox(height: 10),
            _buildListItems(photos[4]),
            const SizedBox(height: 10),
          ],
        )
      ],
    ));
  }

  Widget _buildListItems(String picture) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(5),
                      bottomRight: Radius.circular(5)),
                  image: DecorationImage(
                      image: AssetImage(picture), fit: BoxFit.cover)),
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Maple Musterd Temph',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w800,
                  fontSize: 20
                ),
                ),
                SizedBox(height: 10),
                Text('Kola , onion , tomato and roasted ',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: Colors.grey,
                  fontSize: 12
                ),
                ),
                SizedBox(height: 10),
                Text('Garlic , Grilled  ',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.grey,
                      fontSize: 12
                ),
                ),
                SizedBox(height: 10),
                Text('12 \$',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey,
                      fontSize: 24
                ),
                ),


              ],
            )
          ],
        )
      ],
    );
  }
}
