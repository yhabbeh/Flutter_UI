import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'burgerTruck.dart';
import 'home.dart';

class FoodRecipes extends StatefulWidget {
  const FoodRecipes({Key? key}) : super(key: key);

  @override
  State<FoodRecipes> createState() => _FoodRecipesState();
}

class _FoodRecipesState extends State<FoodRecipes> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => const BurgerTruck()));
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.white70,
          iconSize: 25,
        ),
        title: const Center(
          child: Text(
            'Food Recipes',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => const HomePage()));
              },
              icon: const Icon(
                Icons.home,
                color: Colors.white70,
              ))
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 250,
                color: Colors.blueGrey.shade50,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                    child: Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.circular(25.0),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            size: 20,
                            color: Colors.black,
                          ),
                          contentPadding: EdgeInsets.only(left: 15, right: 15),
                          hintText: 'Search for Recipes and Channels',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: EdgeInsets.only(left: 50),
                    child: Container(
                      padding: const EdgeInsets.only(left: 10),
                      decoration: const BoxDecoration(
                        border: Border(
                          left: BorderSide(
                              color: Colors.orange,
                              width: 3,
                              style: BorderStyle.solid),
                        ),
                        //,
                      ),
                      child: Column(
                        children: const [
                          Text('Popular Recipes',
                              style: TextStyle(fontSize: 30)),
                          Text('This Week', style: TextStyle(fontSize: 30)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      children: [
                        _foodCardBuilder(),
                        _foodCardBuilder(),
                        _foodCardBuilder(),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(width * 0.09, 10, 0, 5),
                        child: const Text(
                          'March 23',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontFamily: 'Quicksands',
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(width * 0.09, 0, 0, 10),
                        child: Text(
                          'Today',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontFamily: 'TimesRoman',
                          ),
                        ),
                      ),
                      Stack(
                        children: [
                          Center(
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.30,
                              width: MediaQuery.of(context).size.width * 0.94,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage("assets/bur_2.jpg"),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.fromLTRB(width * 0.12, 70, 40, 50),
                            child: const Text(
                              'Best of',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.fromLTRB(width * 0.12, 100, 40, 50),
                            child: const Text(
                              'The Dey',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _foodCardBuilder() {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 10),
      height: 125,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: 125,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: const DecorationImage(
                        image: AssetImage("assets/bur_1.jpg"),
                        fit: BoxFit.cover),
                  ),
                  width: 80,
                  height: 80,
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(bottom: 30)),
                    const Text(
                      'Sous Burger',
                      style: TextStyle(fontSize: 20),
                    ),
                    const Text(
                      'With cola and salad',
                      style: TextStyle(fontSize: 12),
                    ),
                    Container(
                      height: 1,
                      width: 100,
                      color: Colors.deepOrange,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                              image: AssetImage('assets/face.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'jams oliver',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
