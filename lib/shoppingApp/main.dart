 import 'package:flutter/material.dart';

import 'home_page_shopping.dart';


void main()=> runApp(MainAppShopping());
class MainAppShopping extends StatefulWidget {
  const MainAppShopping({Key? key}) : super(key: key);

  @override
  State<MainAppShopping> createState() => _MainAppShoppingState();
}

class _MainAppShoppingState extends State<MainAppShopping> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Shopping",
      home: HomePageShopping(),
    );
  }
}
