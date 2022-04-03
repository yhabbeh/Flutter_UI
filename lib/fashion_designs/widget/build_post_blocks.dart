
import 'package:flutter/material.dart';
import 'package:mian/fashion_designs/full_frame_picture.dart';

Widget buildPostBlock({
  required BuildContext context,
  required double width,
  required double height,
  required String imgPath1,
  required String imgPath2,
  required String imgPath3,
  required String avatarPath,
  required String avatarName,
  required String hashtags,
  required int times,
}) {
  return Material(
    elevation:10,
    shadowColor: Colors.brown.shade900,
    // color: Colors.red,
    borderRadius: BorderRadius.circular(15),
    child: Container(
      width: width,
      height: height * 0.8,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(avatarPath),
                          fit: BoxFit.cover,
                        )),
                  ), //avatar
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        avatarName,
                        style: const TextStyle(
                            fontSize: 20,
                            fontFamily: "Quicksand",
                            color: Colors.black),
                      ),
                      Text(
                        times.toString() +
                            " hour" +
                            (times > 1 ? "s " : " ") +
                            ". ago ",
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: "Quicksand",
                            color: Colors.grey.shade700),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: width-300,
                  ),

                ],
              ),
              Positioned(
                top: 0,
                right: 0,
                child: IconButton( onPressed: (){}, iconSize: 15,icon: Icon(Icons.menu,color: Colors.grey.shade700),
                ),
              )
            ],
          ),
          const SizedBox(height: 14,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => FullFramePage(heroTag: imgPath1)));},
                child: Hero(
                  tag: imgPath1,
                  child: Container(
                    height: height*0.5+10,
                    width: width*0.5-25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),image: DecorationImage(
                      image: AssetImage(imgPath1),fit: BoxFit.cover,
                    )
                    ),
                  ),
                ),
              ),
              const SizedBox(width:10,),
              Column(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => FullFramePage(heroTag: imgPath2)));
                    },
                    child: Hero(
                      tag: imgPath2,
                      child: Container(
                        height: height * 0.3,
                        width: width*0.5-60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),image: DecorationImage(
                          image: AssetImage(imgPath2),fit: BoxFit.cover,
                        )
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height :10,),
                  InkWell(
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => FullFramePage(heroTag: imgPath3)));},
                    child: Hero(
                      tag:imgPath3 ,
                      child: Container(
                        height: height * 0.2,
                        width: width*0.5-60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),image: DecorationImage(
                          image: AssetImage(imgPath3),fit: BoxFit.cover,
                        )
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],



          ), // images
          const SizedBox(height: 15  ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(hashtags,style: const TextStyle(color: Colors.brown,fontSize: 15,fontWeight: FontWeight.bold)) ,

              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(

                    children: [
                      IconButton(onPressed: (){},iconSize: 20, icon: Icon(Icons.forward,color: Colors.grey.shade700,), ),
                      const Text("23K",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
                      const SizedBox(width : 15  ),

                      IconButton(onPressed: (){},iconSize: 20, icon: Icon(Icons.comment,color: Colors.grey.shade700,), ),
                      const Text("132",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
                      const SizedBox(width : 15  ),


                    ],
                  ),
                  IconButton(onPressed: (){},iconSize: 20, icon: Icon(Icons.favorite,color: Colors.red.shade700,), ),

                ],
              )
            ],
          )
        ],
      ),
    ),
  );
}
