
import 'package:flutter/material.dart';
import 'home_page_profile_dribble.dart';


void main()=> runApp(const MainProfile());

class MainProfile extends StatefulWidget {
  const MainProfile({Key? key}) : super(key: key);
  @override
  State<MainProfile> createState() => _MainProfileState();
}

class _MainProfileState extends State<MainProfile> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Profile",
      debugShowCheckedModeBanner: false,
      home: HomePageProfileDribble(),
    );
  }
}
