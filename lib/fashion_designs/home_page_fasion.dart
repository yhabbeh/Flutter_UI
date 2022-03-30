import 'package:flutter/material.dart';
import 'package:mian/fashion_designs/widget/build_circle_bar.dart';
import 'package:mian/fashion_designs/widget/build_post_blocks.dart';

class HomePageFashion extends StatefulWidget {
  const HomePageFashion({Key? key}) : super(key: key);

  @override
  State<HomePageFashion> createState() => _HomePageFashionState();
}

class _HomePageFashionState extends State<HomePageFashion> {


  List<String> model = [
    "assets/model1.jpeg",
    "assets/model2.jpeg",
    "assets/model3.jpeg",
  ];
  List<String> names = [
    "Less",
    "Mary",
    "jolly",
  ];
  List<String> modelgrid = [
    "assets/modelgrid1.jpeg",
    "assets/modelgrid2.jpeg",
    "assets/modelgrid3.jpeg",
  ];

  List<String> logo = [
    "assets/louisvuitton.jpg",
    "assets/chloelogo.png",
    "assets/chanellogo.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
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
          IconButton(
              icon: Icon(
                Icons.camera,
                color: Colors.grey.shade900,
              ),
              onPressed: () {}),
          const SizedBox(width: 15),
        ],
      ),
      body: SizedBox(
        width: width,
        child: ListView(
          padding: const EdgeInsets.all(15),
          shrinkWrap: true,
          children: [
            SizedBox(
              height: 90,
              width: width,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(width: 20);
                },
                itemCount: model.length * 4,
                itemBuilder: (BuildContext context, int index) {
                  return buildAvatarCircleBar(
                      isFollowed: index % 3 == 0 ? true : false,
                      imgPath: model[index % model.length],
                      logos: logo[index % logo.length]);
                },
              ),
            ),
            const SizedBox(height: 10),

            ListView.separated(
              shrinkWrap: true,
                itemCount: modelgrid.length*2,
                itemBuilder:  (context, index) =>
              buildPostBlock(
                  width: width,
                  height: height,
                  imgPath1: modelgrid[index%model.length],
                  imgPath2: modelgrid[(index%model.length+1)%model.length],
                  imgPath3: modelgrid[(index%model.length+2)%model.length],
                  avatarPath: model[index%(model.length)],
                  avatarName: names[index%(names.length)],
                  hashtags: "# Fashion   # girls",
                  times: modelgrid.length), separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(height:10);
            },
            )
          ],
        ),
      ),
    );
  }
}
