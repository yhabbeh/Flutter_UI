
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mian/fashion_designs/home_page_fasion.dart';

import 'full_frame_picture.dart';

void main()=> runApp(const MainApp());
class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FashionApp",
      home: FullFramePage(heroTag: "assets/model1.jpeg"),
    );
  }
}
