import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class HomePageChef extends StatefulWidget {
  const HomePageChef({Key? key}) : super(key: key);

  @override
  State<HomePageChef> createState() => _HomePageChefState();
}

class _HomePageChefState extends State<HomePageChef> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: height*0.45,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height:  height*0.3,
                  color: const Color(0xFFFA624F),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    padding: const EdgeInsets.all(20),
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                    iconSize: 30,
                  ),
                ),
                Positioned(
                  top: 150,
                  left: 15,
                  right: 15,
                  child: Container(
                    height: height * 0.25,
                    decoration: BoxDecoration(
                        color: Colors.white, borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Positioned(
                    top: 100,
                    left: width / 2 - 50,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: const DecorationImage(
                              image: AssetImage('assets/chris.jpg'),
                              fit: BoxFit.cover)),
                    )),
                Positioned(
                  top: 200,
                  left: MediaQuery.of(context).size.width / 2 - 150,
                  right: 50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "yousef",
                        style: TextStyle(
                            fontFamily: "Comfort",
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "Jordan",
                        style: TextStyle(
                            fontFamily: "Comfort",
                            fontSize: 20,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                                width: width * 0.3,
                                height: 50,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFFFA624F),),
                                child: const Text(
                                  'Message',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontFamily: "Comfort",
                                      fontSize: 20),
                                )),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                                width: width * 0.3,
                                height: 50,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey.withOpacity(0.8),),
                                child: const Text(
                                  'Following',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontFamily: "Comfort",
                                      fontSize: 20),
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {  },
                  child: const Text("Menu",style: TextStyle(
                    fontSize: 25,fontFamily: "Quicksands",fontWeight: FontWeight.bold,color: Colors.black
                  ),),
                ),
                TextButton(
                  onPressed: (){},
                  child:  Text("see all",style: TextStyle(
                fontSize: 20,fontFamily: "Quicksands",color: Colors.grey.shade900,
                ),),)
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
              height:300,
              width: 100,
              child: ListView.separated( 
                shrinkWrap: true,
                itemBuilder: (context, index) =>
                    Container(height: 20,color: Colors.orange.shade900.withOpacity(index*0.1),)
                ,itemCount:10,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 10,width: 10,);
                },)),
        ],

      ),
    );
  }
}
