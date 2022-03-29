import 'package:flutter/material.dart';
import 'package:mian/fashion_designs/widget/build_circle_bar.dart';

class HomePageFashion extends StatefulWidget {
  const HomePageFashion({Key? key}) : super(key: key);

  @override
  State<HomePageFashion> createState() => _HomePageFashionState();
}

class _HomePageFashionState extends State<HomePageFashion> {
  List<String> model=
  [
    "assets/model1.jpeg",
    "assets/model2.jpeg",
    "assets/model3.jpeg",
  ];

    List<String> logo=
  [
    "assets/louisvuitton.jpg",
    "assets/chloelogo.png",
    "assets/chanellogo.jpg",
  ];




  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar:  AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            "Discovery",
            style: TextStyle(
              color: Colors.black,
                fontSize: 30,
                fontFamily: "Quicksand",
                fontWeight: FontWeight.bold),
          ),
        actions: [
          IconButton(icon: Icon(Icons.camera,color: Colors.grey.shade900,),onPressed: (){}) ,
          const SizedBox(width: 15),
        ],
      ),

      body: Container(
        width: width,
        child: ListView(
          padding: EdgeInsets.all(15),
          shrinkWrap: true,
          children: [
            Container(
              height: height,
              width: width,
              child:
              ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(width: 20);
                },
                itemCount:  model.length*4,
                itemBuilder: (BuildContext context, int index) {
                  return   buildAvatarCircleBar(
                      isFollowed: index%3==0?true:false,
                      imgPath: model[index%model.length],
                      logos: logo[index%logo.length]
                  );
                },
              ),



            )

          ],
        ),
      ),
    );
  }
}
