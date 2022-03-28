
import 'package:flutter/material.dart';
import 'package:mian/furnitureApp/productDescription.dart';
import 'package:mian/furnitureApp/shoppingCart.dart';
import 'package:mian/furnitureApp/stateScreen.dart';

import 'dashBoard.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
        home: ShoppingCart(),//DashBoard(),//ProductDescriptions(),//StateScreen(),//
    );
  }
}
