import 'package:flutter/material.dart';
import 'package:mian/social_media/home_page_social.dart';


void main()=> runApp(const MainApp());
class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // to hide  the debug label
      home:HomePage(),
    );
  }
}
