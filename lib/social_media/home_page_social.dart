import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mian/social_media/widget/style_row.dart';
import 'package:mian/social_media/widget/build_circle_available_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

List<String> photos = [
  "assets/cactus.jpeg",
  "assets/cone.jpeg",
  "assets/window.jpeg",
  "assets/letter.jpeg",
  "assets/bur_2.jpg",
];
List<String> avatar = [
  "assets/hugh.jpg",
  "assets/johnnydepp.jpg",
  "assets/chris.jpg",
  "assets/face.jpg",
  "assets/tomcruise.jpg"
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            "Explore",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          const SizedBox(height: 30),
          Container(
            padding: EdgeInsets.only(left: 20),
            height: 80,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.add),
                          color: Colors.white,
                          iconSize: 35),
                    ),
                    const Text(
                      "Add to",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    )
                  ],
                ),
                const SizedBox(width: 20),
                ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(width: 20);
                  },
                  itemCount: photos.length * 5,
                  itemBuilder: (BuildContext context, int index) {
                    return buildAvailableCircle(
                        imgPath: avatar[index % 4],
                        name: "mike",
                        available: (index % 3 == 0) ? true : false);
                  },
                ),
              ],
            ), //horizontal
          ), //horizontal
          SizedBox(
            height: 20,
          ),


          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: width*0.45,
                    child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(width: 20);
                        },
                        itemCount: photos.length*2,
                        itemBuilder: (BuildContext context, int index) {
                          return firstStyleRow(
                              width: width,
                              imgPath1: photos[photos.length-1-index%photos.length],
                              imageDescription: "assets/huasdfasdf"
                                  "5as4df64asd4f94asdassets/huasdfa"
                                  "sdf5as4df64asd4f94as9fadf9ads4fgh.jpg",
                              avatarImg: avatar[index%avatar.length],
                              longShort: index%2==0?false:true);
                        }),
                  ),
                  Container(
                    width: width*0.45,
                    child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(width: 20);
                        },
                        itemCount: photos.length*2,
                        itemBuilder: (BuildContext context, int index) {
                          return firstStyleRow(
                              width: width,
                              imgPath1: photos[index%photos.length],
                              imageDescription: "assets/huasdfasdf"
                                  "5as4df64asd4f94asdassets/huasdfa"
                                  "sdf5as4df64asd4f94as9fadf9ads4fgh.jpg",
                              avatarImg: avatar[avatar.length-1-index%avatar.length],
                              longShort: index%2==0?true:false);
                        }),
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
