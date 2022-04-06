import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'details.dart';

class HomePageShopping extends StatefulWidget {
  const HomePageShopping({Key? key}) : super(key: key);

  @override
  State<HomePageShopping> createState() => _HomePageShoppingState();
}

class _HomePageShoppingState extends State<HomePageShopping> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children:   [
                Image(image: AssetImage("assets/pic4.jpeg"),fit: BoxFit.fitHeight,height: height*0.6,width: width
                  ,),

              Container(
                padding: EdgeInsets.fromLTRB(80, 50, 0, 0),
                child: Text("Louis W. & A.P.C",
                  style: TextStyle(color: Colors.white.withOpacity(0.6),
                      fontSize: 50),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(30, 120, 30, 0),
                child: Text(" Drop a Chic Selection of Outerwear for 2019 Spring/Summer",textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white.withOpacity(0.6),
                      fontSize:20),
                ),
              ),
              Positioned(
                top: height/2-30,
                left: width/2-30,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailsPage()));
                  },
                  child: Container(
                    width: 60,height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white
                    ),
                    child: Icon(Icons.arrow_forward,),
                  ),
                ),
              )
            ],
          ),

          Stack(
            children: [
              Image.asset("assets/pic5.jpeg", fit: BoxFit.cover, height: height*0.4,width: width, )

            ],)


        ],
      ),

    );
  }
}
