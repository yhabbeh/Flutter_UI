import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mian/furnitureApp/dashBoard.dart';

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
                    color: const Color(0xFFB88F10),
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
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 0),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              child: Hero(
                                child: Container(
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
                                tag: 'Asd',

                              ),
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DashBoard()));
                                }
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Yousef',
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
                                    fontSize: 15,
                                    fontFamily: "Quicksand",
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width - 305),
                            IconButton(
                                alignment: Alignment.topRight,
                                onPressed: () {},
                                icon: Icon(
                                  Icons.settings,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {},
                                iconSize: 30,
                                icon: Icon(Icons.folder_shared,
                                    color: Colors.white70),
                              ),
                              Text(
                                'Favorite',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontFamily: "Quicksand",
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {},
                                iconSize: 30,
                                icon: Icon(Icons.account_balance_wallet,
                                    color: Colors.white70),
                              ),
                              Text(
                                'Favorite',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontFamily: "Quicksand",
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {},
                                iconSize: 30,
                                icon: Icon(Icons.print, color: Colors.white70),
                              ),
                              Text(
                                'Favorite',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontFamily: "Quicksand",
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {},
                                iconSize: 30,
                                icon: Icon(Icons.fact_check_rounded,
                                    color: Colors.white70),
                              ),
                              Text(
                                'Favorite',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontFamily: "Quicksand",
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      GridView.count(
                        shrinkWrap: true,
                        crossAxisCount: 2,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                        padding: EdgeInsets.fromLTRB(15, 20, 15, 30),
                        children: [
                          _cardDetails(
                              title: 'Pending payment',
                              imgPath: 'assets/card.png',
                              valueCount: '1'),
                          _cardDetails(
                              title: 'Pending payment',
                              imgPath: 'assets/box.png',
                              valueCount: '4'),
                          _cardDetails(
                              title: 'Pending payment',
                              imgPath: 'assets/returnbox.png',
                              valueCount: '0'),
                          _cardDetails(
                              title: 'Pending payment',
                              imgPath: 'assets/trucks.png',
                              valueCount: '5'),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      _listItem(label: "Gift Card",buttonColor: Colors.blue, iconButton: Icons.contacts),
                      _listItem(label: "Bank Card",buttonColor: Colors.deepOrangeAccent, iconButton: Icons.credit_card_outlined),
                      _listItem(label: "Replacement code",buttonColor: Colors.green, iconButton: Icons.qr_code_outlined),
                      _listItem(label: "Consultant collection",buttonColor: Colors.deepPurple, iconButton: Icons.document_scanner),
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardDetails(
      {required String title,
      required String imgPath,
      required String valueCount}) {
    return Material(
      elevation: 5.2,
      borderRadius: BorderRadius.circular(7),
      child: Container(
        height: 120, width: (MediaQuery.of(context).size.width / 2) - 50,
        //color: Colors.white,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(7)),
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Image.asset(
                  imgPath,
                  fit: BoxFit.cover,
                  width: 80,
                  height: 70,
                ),
              ),
              Text(
                title,
                style: const TextStyle(
                    fontSize: 20, color: Colors.black, fontFamily: "Quicksand"),
              ),
              SizedBox(height: 20),
              Text(
                valueCount,
                style: const TextStyle(
                    fontSize: 20, color: Colors.black, fontFamily: "Quicksand"),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _listItem(
      {required String label, required Color buttonColor, iconButton}) {
    return Material(
      elevation: 5.0,
      child: Container(
        height: 70,
        width: MediaQuery.of(context).size.width ,
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: buttonColor.withOpacity(0.4)),
                    child: Icon(
                      iconButton,
                      size: 25,
                      color: buttonColor,
                    )),
                const SizedBox(width: 25),
                Text(
                  label,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize:20,
                    fontFamily: "Quicksand",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
              iconSize: 25,
            )
          ],
        ),
      ),
    );
  }
}
