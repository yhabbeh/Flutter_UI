import 'package:flutter/material.dart';
import 'package:mian/profile.dart';

import 'collect.dart';

class Cards extends StatelessWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCards(),
    );
  }
}

class MyCards extends StatefulWidget {
  const MyCards({Key? key}) : super(key: key);

  @override
  _MyCards createState() => _MyCards();
}

class _MyCards extends State<MyCards> with SingleTickerProviderStateMixin {
  late Animation cardAnimation ;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds:1), vsync: this);

    cardAnimation = Tween(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(curve: Curves.fastOutSlowIn, parent: controller));

  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    const String women = "https://th.bing.com/th/id/OIP.SIhBpZ_TKdCfd7SJK78_gQHaLI?pid=ImgDet&rs=1";
    controller.forward();
    return AnimatedBuilder(
        animation: controller,
        builder: (BuildContext context, Widget? child) {
    return Scaffold(
        appBar: AppBar(
          elevation: 5,
          backgroundColor: Colors.blue,
          title: const Text(
            'Near by',
            style: TextStyle(
                fontFamily: 'Quicksands', fontSize: 30, color: Colors.black54),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios,
                color: Colors.blueGrey, size: 20),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Pages()));
            },
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: IconButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Profile()));
                },
                icon: const Icon(Icons.contacts_outlined),
              ),
            )
          ],
        ),
        body: Transform(
          transform: Matrix4.translationValues(0.0, cardAnimation.value * height,  0.0),
          child: Stack( 
                    children: [
                      Positioned(
                        top: 40.0,
                        left: width*0.50*0.5,
                        child: Container(
                          width: width*0.50,
                          height: height*0.50,
                          decoration: BoxDecoration(
                              color: Colors.deepOrangeAccent,
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ),
                      Positioned(
                        top: 60.0,
                        left: width*0.45*0.5,
                        child: Container(
                          width: width*0.55,
                          height: height*0.55,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ),
                      Positioned(
                          top: 80.0,
                          left: width*0.40*0.5,
                          child: Container(
                            width: width*0.6,
                            height: height*0.6,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              border: Border.all(color: Colors.black,width: 2 )
                            ),
                            child: const Image(
                              fit: BoxFit.fitHeight,
                              image: NetworkImage(women),
                            ),
                          )
                      ),
                    ],
                  ),
        ),
    );
  }
  );
  }
}


