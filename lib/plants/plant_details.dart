 import 'package:flutter/material.dart';
import 'package:mian/plants/home_page_plant.dart';

class PlantDetails extends StatelessWidget {
  const PlantDetails(
      {Key? key,
      required this.count,
      required this.typePL,
      required this.namePL,
      required this.cost,
      required this.imgPath})
      : super(key: key);

  final int count;
  final String typePL;
  final String namePL;
  final double cost;
  final String imgPath;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Material(
      child: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(
            height: height,
            width: width,
            child: Stack(
              children: [
                Container(
                    height: height,
                    width: width,
                    padding: EdgeInsets.only(top: height * 0.55),
                    decoration: const BoxDecoration(
                      color: Color(0xff399D53),
                    ),
                    child: Container(
                      height: height * 0.6,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20))),
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(
                                  top:30, left: 50.0, right: 15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const <Widget>[
                                  Text(
                                    'All to know...',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(height: 12.0),
                                  Text(
                                    'If you are completely new to houseplants then Ficus is a brilliant first plant to adopt, it is very easy to look after and won\'t occupy too much space.',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  SizedBox(height: 30.0),
                                  Text(
                                    'Details',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(height: 10.0),
                                  Text(
                                    'Plant height: 35-45cm;',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  Text(
                                    'Nursery pot width: 12cm',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    )),
                Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePagePlants(),
                            ));
                      },
                      icon:
                          const Icon(Icons.arrow_back_ios, color: Colors.white),
                      iconSize: 20,
                    )),
                Positioned(
                  top: 20,
                  left: width - 50,
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: const EdgeInsets.all(0),
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.greenAccent.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20)),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomePagePlants(),
                              ));
                        },
                        icon: const Icon(Icons.shopping_cart,
                            color: Colors.white),
                        iconSize: 20,
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 20,
                    left: width - 20,
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                      child: Text(
                        count.toString(),
                        style: const TextStyle(fontSize: 15),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 70),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        typePL,
                        style:
                            const TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      Text(
                        namePL,
                        style: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "From",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      Text(
                        "\$" + cost.toString(),
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Size",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      const Text(
                        "Small",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    left: width * 0.4,
                    top: 90,
                    width: 300,
                    height: 400,
                    child: Image(
                      image: AssetImage(imgPath),
                      fit: BoxFit.cover,
                      width: 100 + width * 0.1,
                      height: 150 + height * 0.1,
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 280, left: 20),
                  child: Container(
                    padding: const EdgeInsets.all(0),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.black,
                    ),
                    child: IconButton(
                      padding: const EdgeInsets.all(0),
                      icon:
                          const Icon(Icons.shopping_cart, color: Colors.white),
                      iconSize: 30,
                      onPressed: () {},
                    ),
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
