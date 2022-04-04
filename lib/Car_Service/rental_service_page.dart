import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mian/Car_Service/home_page_car_service.dart';

class RentalService extends StatefulWidget {
  const RentalService({Key? key}) : super(key: key);

  @override
  State<RentalService> createState() => _RentalServiceState();
}

class _RentalServiceState extends State<RentalService> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xFFFBC044),
          Color(0xFFD8992B),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomePageCarService()));
                  },
                  icon: Icon(Icons.close),
                  iconSize: 30,
                  color: Colors.black,
                ),
              ),
              const Text(
                "Check Vehicle \nAvailability",
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Quicksands"),
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(
                    prefixIcon:
                        Icon(Icons.arrow_back, color: Colors.white, size: 20),
                    hintText: "Enter Your Zip Code",
                    hintStyle: TextStyle(color: Colors.white, fontSize: 30),
                    border: InputBorder.none),
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontFamily: "Quicksands"),
              ),
              const Text(
                  "We want to ensure this vehicle is available in your area for delivery ",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: "Quicksands")),
              const Image(
                  image: AssetImage("assets/porsche.png"),
                  height: 250,
                  fit: BoxFit.fill),
              Container(
                height: 1.5,
                width: width,
                color: Colors.blue.shade700.withOpacity(0.3),
              ),
              const Text("Been here before? Already have an Eleanor account? ",
                  style: TextStyle(
                    height: 1.5,
                    fontSize: 14,
                    color: Colors.white,
                    fontFamily: "Quicksands",
                    fontWeight: FontWeight.bold,
                  )),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomePageCarService()));},
                    child: const Text(
                      "SignIn",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePageCarService()));}, icon: Icon(Icons.arrow_forward_rounded))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
