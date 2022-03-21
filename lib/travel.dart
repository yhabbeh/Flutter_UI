import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mian/home.dart';

import 'burgerTruck.dart';

class Travel extends StatelessWidget {
  const Travel({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    late double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
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
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.black38,
                  ),
                ),
                const SizedBox(width: 20),
                InkWell(
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const BurgerTruck()));
                        },
                        icon: const Icon(Icons.arrow_forward_ios),
                        color: Colors.black),
                  ],
                ),
              ),
            ),
          ),
          _buildImage(screenWidth: screenWidth),
          Padding(
            padding: EdgeInsets.fromLTRB(25, 20, 25, 20),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 10),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: const [
                    //     Text(
                    //       'Maldives Trip 2018 ',
                    //       style: TextStyle(
                    //           fontSize: 15,
                    //           color: Colors.grey,
                    //           fontWeight: FontWeight.bold,
                    //           fontFamily: 'Quicksands'),
                    //     ),
                    //     Text(
                    //       'Add An update ',
                    //       style: TextStyle(
                    //           fontSize: 20,
                    //           color: Colors.black,
                    //           fontWeight: FontWeight.bold,
                    //           fontFamily: 'Quicksands'),
                    //     ),
                    //   ],
                    // ),
                    // const SizedBox(width: 190),
                    // IconButton(
                    //     onPressed: () {},
                    //     icon: Icon(Icons.),
                    //     color: Colors.black),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildImage({ required double screenWidth}) {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Container(
        height: 300,
        child: Row(
          children: [
            Container(
              height: 300,
              width:screenWidth*0.6,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                  image:
                      DecorationImage(image: AssetImage('assets/beach1.jpg'),fit:BoxFit.cover)),
            ),
            SizedBox(width: 2.0),
            Column(
              children: [
                Container(
                  height: 148,
                  width: screenWidth*0.3,
                  decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(20)),
                      image: DecorationImage(
                          image: AssetImage('assets/beach2.jpg'),fit:BoxFit.cover)),
                ),
                SizedBox(height: 4),
                Container(
                  height: 148,
                  width: screenWidth*0.3,
                  decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(20)),
                      image: DecorationImage(
                          image: AssetImage('assets/beach3.jpg'),fit:BoxFit.cover)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
