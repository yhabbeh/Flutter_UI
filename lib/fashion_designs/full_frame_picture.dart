import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page_fasion.dart';

class FullFramePage extends StatefulWidget {
  final String heroTag;

  const FullFramePage({required this.heroTag});

  @override
  State<FullFramePage> createState() => _FullFramePageState(heroTag: heroTag);
}

class _FullFramePageState extends State<FullFramePage> {
  final heroTag;

  _FullFramePageState({this.heroTag});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    String description =
        "Using text message templates can improve your workflow and free "
        "up your time to focus on other projects. You can easily find many examples of text message templates"
        " for SMS marketing campaigns, text automation, loyalty programs, appointment confirmation texts, etc;"
        " however, these are often robotic and can harm your business relationships. To help you create a more tailored, "
        "personal experience, we’ve decided to share some templates for effective business communications";
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Stack(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomePageFashion()));
                },
                child: Hero(
                    tag: heroTag,
                    child: Container(
                      width: width,
                      height: height,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(heroTag), fit: BoxFit.cover)),
                    )),
              ),
              Positioned(
                  top: height * 0.6,
                  left: width * 0.1,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 5),
                    height: height * 0.26,
                    width: width * 0.8 ,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(

                                height: height * 0.177,
                                width: width * 0.2,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage(heroTag),
                                    fit: BoxFit.cover,
                                  ),
                                )),
                            SizedBox(width: 20,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                 Text(
                                  "Laminated",
                                  style: TextStyle(
                                    height:1.2,
                                      color: Colors.black, fontSize: height*0.032,
                                      fontFamily: "Comfort",
                                      fontWeight: FontWeight.bold),
                                  softWrap: true,
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 5  ),
                                  height:  height * 0.13,
                                  width: width * 0.46,
                                  child: ListView(shrinkWrap: true, children: [

                                    Text(
                                      description,
                                      style:  TextStyle(
                                          color: Colors.grey, fontSize:  height*0.024,
                                      fontFamily: "Timesroman",
                                        // fontWeight: FontWeight.bold
                                      ),
                                      softWrap: true,
                                    ),
                                  ]),
                                ),
                              ],
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$300",
                              style: TextStyle(
                                color: Colors.black,
                                  fontSize: height * 0.051,
                                fontFamily: "Quicksands",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Container(
                              width: height*0.05,
                                height: height*0.050,
                                decoration: BoxDecoration(
                                  color: Colors.orangeAccent,
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                child: Center(
                                  child: IconButton(onPressed: (){},
                                    icon:const Icon(Icons.arrow_forward_ios,color: Colors.black,),
                                    iconSize: height*0.025,
                                  ),
                                ))
                          ],
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
