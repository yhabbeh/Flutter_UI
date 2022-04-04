import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mian/Car_Service/rental_service_page.dart';

class HomePageCarService extends StatefulWidget {
  const HomePageCarService({Key? key}) : super(key: key);

  @override
  State<HomePageCarService> createState() => _HomePageCarServiceState();
}

class _HomePageCarServiceState extends State<HomePageCarService> with SingleTickerProviderStateMixin{
    late TabController controller ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: width,
        height: height,
        child: Stack(
          children: [
            Positioned(
                top: height * 0.1,
                left: 0,
                child: Container(
                    width: width,
                    child: Image(image: AssetImage("assets/porsche.png")))),
            Container(
              padding: EdgeInsets.all(20),
              child: ListView(
                shrinkWrap: true,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Icon(Icons.camera,
                        color: Colors.yellow.shade700, size: 30),
                  ),
                  Text("Your Current \nVehicle",
                      style: TextStyle(
                          fontSize: width * 0.05 + 20,
                          fontFamily: "Quicksands",
                          color: Colors.blue.shade900,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: width * 0.33,
                  ),
                  Text("PORSHE",
                      style: TextStyle(
                          fontSize: width * 0.05 + 20,
                          fontFamily: "Quicksands",
                          color: Colors.black,
                          fontWeight: FontWeight.w900)),
                  Text("2019-911 CARRERA S",
                      style: TextStyle(
                          fontSize: width * 0.03 + 5,
                          fontFamily: "Quicksands",
                          color: Colors.black,
                          fontWeight: FontWeight.w200)),
                  Container(
                    height: 0.9,
                    width: width - 20,
                    color: Colors.blueAccent.shade700.withOpacity(0.5),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: const [
                          Icon(
                            Icons.local_gas_station,
                            color: Colors.grey,
                            size: 30,
                          ),
                          Text(
                            "19/24",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Quicksands"),
                          )
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(
                            Icons.alarm,
                            color: Colors.grey,
                            size: 30,
                          ),
                          Text(
                            "3.2",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Quicksands"),
                          )
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(
                            Icons.network_cell,
                            color: Colors.grey,
                            size: 30,
                          ),
                          Text(
                            "443",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Quicksands"),
                          )
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 1,
                    color: Colors.grey.shade700.withOpacity(0.4),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.refresh,
                          color: Colors.grey,
                          size: 30,
                        ),
                      ),
                      Text("EXCHANGE YOUR VILLE",
                          style: TextStyle(
                              fontSize: width * 0.05,
                              fontFamily: "Timesroman",
                              color: Colors.black,
                              fontWeight: FontWeight.w900)),
                      const SizedBox(width: 30),
                      IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const RentalService()));
                          },
                          icon: const Icon(
                            Icons.arrow_forward_rounded,
                            color: Colors.grey,
                            size: 30,
                          )),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: Material(
          color: Colors.white,
        child: TabBar(
          controller: controller,
          indicatorColor: Colors.transparent,
          tabs: [
            Tab(icon: Icon(Icons.more,color: Colors.grey, size: 30, ),),
            Tab(icon: Icon(Icons.play_for_work,color: Colors.grey, size: 30, ),),
            Tab(icon: Icon(Icons.navigation,color: Colors.grey, size: 30, ),),

          ],
        ),
      ),
    );
  }
}
