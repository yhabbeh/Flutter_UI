import 'package:flutter/material.dart';
import 'package:mian/plants/plant_details.dart';

void main() => runApp(MainAppPlants());

class MainAppPlants extends StatefulWidget {
  const MainAppPlants({Key? key}) : super(key: key);

  @override
  State<MainAppPlants> createState() => _MainAppPlantsState();
}

class _MainAppPlantsState extends State<MainAppPlants> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Plants",
      home: PlantDetails( count: 1,cost: 262 ,namePL: "Alovera",typePL: "Indoor",imgPath:     "assets/flowerplant.png",),
    );
  }
}
