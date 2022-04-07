import 'package:flutter/material.dart';
import 'package:mian/plants/plant_details.dart';

Widget buildCardPlant({
  required BuildContext context,
  required double width,
  required double height,
  required String imgPath,
  required String imgName,
  required String typeOfPlant,
  required double cost,
  required int index,

}) {
  return SizedBox(
    width: 225,
    child: ListView(
      shrinkWrap: true,
      children: [
        Stack(children: [
          Container(
            width: 225,
            height: 320,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.green.shade700,
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Column(
                children: [
                  const Text("From",
                      style: TextStyle(fontSize: 15, color: Colors.white)),
                  Text("\$" + cost.toString(),
                      style:
                          const TextStyle(fontSize: 15, color: Colors.white)),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Image(
              image: AssetImage(imgPath),
              width: 200,
              height: 300,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 210,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  typeOfPlant,
                  style: TextStyle(
                      fontSize: 15, color: Colors.white.withOpacity(0.7)),
                ),
                Text(
                  imgName,
                  style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 220,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.white.withOpacity(0.4)),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.wb_sunny,
                          color: Colors.white.withOpacity(0.4),
                        ),
                      ),
                      Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.white.withOpacity(0.4)),
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(
                            Icons.water_drop,
                            color: Colors.white.withOpacity(0.4),
                          )),
                      Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.white.withOpacity(0.4)),
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(
                            Icons.whatshot_sharp,
                            color: Colors.white.withOpacity(0.4),
                          )),
                      Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.white.withOpacity(0.4)),
                              borderRadius: BorderRadius.circular(10)),
                          child: IconButton(
                              padding: const EdgeInsets.all(0),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => PlantDetails(
                                        imgPath: imgPath,
                                        cost: 262 ,namePL: imgName,typePL: typeOfPlant,
                                        count: index,
                                      ),
                                    ));
                              },
                              icon: Icon(
                                Icons.question_mark,
                                color: Colors.white.withOpacity(0.4),
                              ))),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 300, left: 90),
            child: Container(
              padding: EdgeInsets.all(10),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.black,
              ),
              child: IconButton(
                padding: const EdgeInsets.only(right: 10, bottom: 10),
                icon: const Icon(Icons.shopping_cart, color: Colors.white),
                iconSize: 30,
                onPressed: () {},
              ),
            ),
          )
        ]),
      ],
    ),
  );
}
