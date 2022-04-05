import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page_fruits.dart';


void main() => runApp(MainAppFruit());

class MainAppFruit extends StatefulWidget {
  const MainAppFruit({Key? key}) : super(key: key);

  @override
  State<MainAppFruit> createState() => _MainAppFruitState();
}

class _MainAppFruitState extends State<MainAppFruit> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageFruits() ,
    );
  }
}
