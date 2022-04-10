 import 'package:flutter/material.dart';
import 'home_page_cake.dart';


void main()=> runApp(const MainCakePastries());
class MainCakePastries extends StatefulWidget {
  const MainCakePastries({Key? key}) : super(key: key);

  @override
  State<MainCakePastries> createState() => _MainCakePastriesState();
}

class _MainCakePastriesState extends State<MainCakePastries> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Cake",
      debugShowCheckedModeBanner: false,
       home: HomePageCake(),
    );
  }
}
