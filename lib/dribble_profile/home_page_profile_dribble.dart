
import 'package:flutter/material.dart';

class HomePageProfileDribble extends StatefulWidget {
  const HomePageProfileDribble({Key? key}) : super(key: key);

  @override
  State<HomePageProfileDribble> createState() => _HomePageProfileDribbleState();
}

class _HomePageProfileDribbleState extends State<HomePageProfileDribble> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    List<String> imagpath = [
      "assets/style1.jpg",
      "assets/style2.jpg",
      "assets/style3.jpeg"
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: width * 0.1,
                width: width * 0.1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width * 0.05),
                    image: const DecorationImage(
                      image: AssetImage("assets/chris.jpg"),
                      fit: BoxFit.cover,
                    )),
              ),
              const Text(
                "Yousef Habbeh ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Comfort",
                    height: 2),
              ),
              const Text(
                "Amman Jordan,",
                style: TextStyle(
                  color: Colors.grey,
                    fontFamily: "Comfort",
                    height: 1.2),
              ),
                Text(
                "Hello, I am Yousef, I love making cool photos, beautiful architecture and ice cream ",
                style: TextStyle(
                  color: Colors.grey.shade700,
                    fontFamily: "Comfort",
                    height: 2.2),
              ),
              Padding(padding: const EdgeInsets.all(25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Column(
                    children: const [
                      Text("1500",style: TextStyle(
                        color: Colors.red, fontFamily: "Quicksands",fontSize: 18
                      ),),
                      Text("Followers",style: TextStyle(
                        color: Colors.blueGrey, fontFamily: "Quicksands",fontSize: 18
                      ),),

                    ],
                  ),
                  Column(
                    children: const[
                      Text("1240",style: TextStyle(
                        color: Colors.red, fontFamily: "Quicksands",fontSize: 18
                      ),),
                      Text("Following",style: TextStyle(
                        color: Colors.blue, fontFamily: "Quicksands",fontSize: 18
                      ),),

                    ],
                  ),
                  Column(
                    children: const [
                      Text("432",style: TextStyle(
                        color: Colors.red, fontFamily: "Quicksands",fontSize: 18
                      ),),
                      Text("Likes",style: TextStyle(
                        color: Colors.blueGrey, fontFamily: "Quicksands",fontSize: 18
                      ),),

                    ],
                  ),

                ],
              ),
              ),
              const SizedBox(height: 20,),

              SizedBox(
                height: width*0.3,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>
                        Container(
                          width: width*0.3,
                          height: width*0.3,
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                             image: AssetImage(imagpath[index%imagpath.length]),fit: BoxFit.cover
                            )
                          ),
                    ),
                    separatorBuilder: (BuildContext context,int index){
                         return const SizedBox(width: 10);

                    }, itemCount: 5,),
              ),
              const SizedBox(height: 15 ),
              SizedBox(
                height: width*0.15,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>
                        Container(
                          width: width*0.17,
                          height: width*0.17,
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                             image: AssetImage(imagpath[(index+1)%imagpath.length]),fit: BoxFit.cover
                            )
                          ),
                    ),
                    separatorBuilder: (BuildContext context,int index){
                         return const SizedBox(width: 10);

                    }, itemCount: 5,),
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    child: Container(
                      width: width*0.2,
                        height: height*0.1,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(Icons.arrow_back, )
                    ),
                    onTap: (){},
                  ),
                  InkWell(
                    child: Container(
                      width: width*0.4,
                        height: height*0.1,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text("Follow",style: TextStyle(
                          color: Colors.white, fontSize: 30,fontFamily: "Quicksands",fontWeight: FontWeight.bold
                        ),)),
                    onTap: (){},
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
