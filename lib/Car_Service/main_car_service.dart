import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page_car_service.dart';


void main()=> runApp(const MainCarService());

class MainCarService extends StatefulWidget {
  const MainCarService({Key? key}) : super(key: key);

  @override
  State<MainCarService> createState() => _MainCarServiceState();
}

class _MainCarServiceState extends State<MainCarService> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageCarService(),

    );


  }
}
