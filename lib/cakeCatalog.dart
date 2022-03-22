import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CakeCat extends StatefulWidget {
  const CakeCat({Key? key}) : super(key: key);

  @override
  State<CakeCat> createState() => _CakeCatState();
}

class _CakeCatState extends State<CakeCat> {
  List<bool> favorite = [true,true,false,true,true,true,false,true];
  List<bool> chatIcon  = [true,false,true,false,true,false,true,true];
  bool forward = false;

  bool changFavourite(getColor) {
    setState(() {
      getColor = !getColor;
    });
    return getColor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 50,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              // Navigator.push(context,MaterialPageRoute(builder: (context) => const BurgerTruck()));
            },
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.black,
            iconSize: 25,
          ),
          title: const Center(
            child: Text(
              'Cake Catalog',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Quicksands",
                color: Colors.black,
                fontSize: 25,
              ),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  //Navigator.push(context,MaterialPageRoute(builder: (context) => const HomePage()));
                },
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Column(
              children: [
                Center(
                  heightFactor: 1,
                  widthFactor: 1.2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.5,
                            width: MediaQuery.of(context).size.width * 0.7,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              image: DecorationImage(
                                image: AssetImage("assets/img3.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              'Chocolate Cream',
                              style: TextStyle(
                                color: Colors.white,
                                height: 8,
                                fontSize: 30,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 30),
                            child: Text(
                              '\$80',
                              style: TextStyle(
                                color: Colors.white,
                                height: 14,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 80),
                            child: Text(
                              '\$169',
                              style: TextStyle(
                                color: Colors.white,
                                height: 14,
                                fontSize: 20,
                                decoration: TextDecoration.lineThrough,
                                decorationThickness: 1.5,
                                decorationColor: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      favorite[0] = changFavourite(favorite[0]);
                                    },
                                    icon: Icon(
                                      Icons.favorite,
                                      color: favorite[0] ? Colors.red : Colors.grey,
                                    )),
                                const Text(
                                  '39K',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Container(
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      chatIcon[0] = changFavourite(chatIcon[0]);
                                    },
                                    icon: Icon(
                                      Icons.chat_bubble,
                                      color: chatIcon[0] ? Colors.blue : Colors.grey,
                                    )),
                                Text(
                                  '39K',
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Container(
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      forward = changFavourite(forward);
                                    },
                                    icon: Icon(
                                      Icons.forward,
                                      color: forward ? Colors.green : Colors.grey,
                                    )),
                                const Text(
                                  '39K',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: [
                    _buildFoodCard('Raspberry', 'Italy' , "assets/img1.jpg", 216 , 141  , 1),
                    _buildFoodCard('strawberry', 'Italy' ,"assets/img2.jpg", 260 , 205  , 2),
                    _buildFoodCard('Rasbery', 'Italy' , "assets/img3.jpg", 512 , 421  , 3),
                    _buildFoodCard('Rasbery', 'Italy' , "assets/img4.jpg", 216 , 412  , 4),
                    _buildFoodCard('Rasbery', 'Italy' , "assets/img5.jpg", 216 , 525  , 5),
                    _buildFoodCard('Rasbery', 'Italy' , 'assets/img6.jpg', 26 , 251  , 6),
                   _buildFoodCard('Rasbery', 'Italy' , 'assets/img7.jpg', 261 , 215  , 7),

                  ],
                )
              ],
            ),
          ),
        ));
  }

  Widget _buildFoodCard(String name, String origin, String cardImage, int likes,
      int commentCount, int cardIndex) {
    return Padding(
      padding: cardIndex.isEven
          ?  const EdgeInsets.only(right: 20)
          :  const EdgeInsets.only(left: 20),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
              color: Colors.grey.withOpacity(0.2),
              style: BorderStyle.solid,
              width: 1),
          
        ),
        child: Stack(
          children: [

            Column(
             crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.19 ,
                  decoration: BoxDecoration(
                      borderRadius:  const BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10)),
                      image: DecorationImage(
                        image: AssetImage(cardImage),
                        fit: BoxFit.cover,
                      )),
                ),
                const SizedBox(height: 7),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(name,style: TextStyle(color: Colors.black,fontSize: 20, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(origin,style: TextStyle(color: Colors.grey,fontSize: 15, fontWeight: FontWeight.w300),),
                ),
                Row(

                  children: [
                    IconButton(
                        onPressed: () {
                          favorite[cardIndex] = changFavourite(favorite[cardIndex]);
                        },
                        icon: Icon(
                          Icons.favorite,
                          color: favorite[cardIndex] ? Colors.red : Colors.grey,
                        )),
                    Text(
                        likes.toString(),
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          chatIcon[cardIndex] = changFavourite(chatIcon[cardIndex]);
                        },
                        icon: Icon(
                          Icons.chat_bubble,
                          color: chatIcon[cardIndex] ? Colors.blue : Colors.grey,
                        )),
                    Text(
                      commentCount.toString(),
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                )



              ],
            ),
            Positioned(
                top  :  MediaQuery.of(context).size.height*0.19-20,
                right: 10,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.deepOrangeAccent),
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon:  const Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
