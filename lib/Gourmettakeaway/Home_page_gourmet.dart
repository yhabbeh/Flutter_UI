import 'package:flutter/material.dart';
import 'package:mian/chef_profile/main_chef.dart';

class HomePageGourmet extends StatefulWidget {
  const HomePageGourmet({Key? key}) : super(key: key);

  @override
  State<HomePageGourmet> createState() => _HomePageGourmetState();
}

class _HomePageGourmetState extends State<HomePageGourmet> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        body: ListView(
      shrinkWrap: true,
      children: [
        Stack(
          children: [
            Container(
              width: width,
              height: height * width * 0.0007,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 6,
                      spreadRadius: 2),
                ],
                color: Colors.white,
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.settings, color: Colors.grey),
              ),
            ),
            Positioned(
                top: 30,
                left: 20,
                right: 20,
                child: Row(
                  children: [
                    Container(
                        height: height * width * 0.0004,
                        width: width * height * 0.0004,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(width * height * 0.0002),
                          image: const DecorationImage(
                              image: AssetImage("assets/chris.jpg")),
                        )),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Jacob Coleman",
                          style:
                              TextStyle(
                                fontWeight: FontWeight.bold,
                                  color: Color(0xffc69c0f),
                                  fontSize: 30),

                        ),

                      ],
                    )
                  ],
                ))
          ],
        ),
      ],
    ));
  }
}
