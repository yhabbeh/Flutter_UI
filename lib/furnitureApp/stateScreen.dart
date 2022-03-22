import 'package:flutter/material.dart';

class StateScreen extends StatefulWidget {
  const StateScreen({Key? key}) : super(key: key);

  @override
  State<StateScreen> createState() => _StateScreenState();
}

class _StateScreenState extends State<StateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 260,
                    width: double.infinity,
                    color: const Color(0xFFFDD148),
                  ),
                  Positioned(
                    bottom: 100,
                    left: -200,
                    child: Container(
                      width: 500,
                      height: 500,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(250),
                          color: const Color(0x5df3e997)),
                    ),
                  ),
                  Positioned(
                    right: 25,
                    top: 20,
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(250),
                          color: const Color(0x5df3e997)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.all(30),
                          height: 80,
                          width: 80,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                              image: DecorationImage(
                                  image: AssetImage("chris.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Pino',
                              style: TextStyle(
                              height: 3,
                              fontSize: 30,
                              fontFamily: "Quicksand",
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            ),
                            Text(
                              '123****1453',
                              style: TextStyle(
                                fontSize:15,
                                fontFamily: "Quicksand",
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),


                        SizedBox(width:MediaQuery.of(context).size.width-305 ),
                        IconButton(
                          alignment: Alignment.topRight,
                            onPressed: () {},
                            icon: Icon(
                              Icons.settings,
                              color: Colors.grey.shade500,
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
    ;
  }
}
