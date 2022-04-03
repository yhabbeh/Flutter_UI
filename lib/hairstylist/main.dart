import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mian/hairstylist/homePageHairstylist.dart';


void main()=>runApp(const MainHairstylist());

class MainHairstylist extends StatefulWidget {
  const MainHairstylist({Key? key}) : super(key: key);

  @override
  State<MainHairstylist> createState() => _MainHairstylistState();
}

class _MainHairstylistState extends State<MainHairstylist> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageHairstylist(),
    );
  }
}
