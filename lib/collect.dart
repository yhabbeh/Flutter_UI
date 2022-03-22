
import 'package:flutter/material.dart';
import 'package:mian/profile.dart';
import 'package:mian/profiletravel.dart';
import 'package:mian/resturent.dart';
import 'package:mian/signin.dart';
import 'package:mian/signup.dart';
import 'package:mian/travel.dart';

import 'burgerTruck.dart';
import 'cards.dart';
import 'foodRecipes.dart';
import 'home.dart';

class Pages extends StatelessWidget {
   const Pages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late double width = MediaQuery.of(context).size.width*0.3;
    late double height = MediaQuery.of(context).size.height*0.3;

    return Scaffold(
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
        shrinkWrap: true,
        children: [
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextButton(
              child: const Text(
                'HomePage',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
              onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));},
            ),
          ),//Home
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextButton(
              child: const Text(
                'SignIn',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
              onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => const SignIn()));},
            ),
          ),
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextButton(
              child: const Text(
                'SignUP',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
              onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUp()));},
            ),
          ),
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextButton(
              child: const Text(
                'Food',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
              onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => const Food()));},
            ),
          ),
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextButton(
              child: const Text(
                'Profile',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
              onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => const Profile()));},
            ),
          ),
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextButton(
              child: const Text(
                'Cards',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
              onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => const Cards()));},
            ),
          ),
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextButton(
              child: const Text(
                'Burger Truck',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),
              ),
              onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => const BurgerTruck()));},
            ),
          ),//Burger_Truck
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextButton(
              child: const Text(
                'Travel',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
              onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => const Travel()));},
            ),
          ),//Travel
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextButton(
              child: const Text(
                'ProfileTravel',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
              onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileTravel()));},
            ),
          ),
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextButton(
              child: const Text(
                'FoodRecipes',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
              onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => const FoodRecipes()));},
            ),
          ),

        ],
      ),
    );
  }
}
