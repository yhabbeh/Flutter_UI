import 'package:flutter/material.dart';
import 'package:mian/travel.dart';

class ProfileTravel extends StatefulWidget {
  const ProfileTravel({Key? key}) : super(key: key);

  @override
  State<ProfileTravel> createState() => _ProfileTravelState();
}

class _ProfileTravelState extends State<ProfileTravel> {


  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width ;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 1.0,
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => const Travel()));
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        actions: [
          IconButton(
              onPressed: () {
                //Navigator.push(context,MaterialPageRoute(builder: (context) => const Travel()));
              },
              icon: const Icon(
                Icons.more_vert,
                color: Colors.black,
              ))
        ],
      ),

      body: ListView(
        padding: const EdgeInsets.only(top: 20),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(tag: 'Elon_Mask pic', child:Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: const DecorationImage(
                    image: NetworkImage('https://www.businessinsider.in/photo/77782500/elon-musk-is-now-worth-100-billion-half-of-jeff-bezos.jpg?imgsize=241963'),
                    fit: BoxFit.cover,
                  )
                ),

              )),
              const SizedBox(height: 20),
              const Text(
                'Elon Mask',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontFamily: 'Quicksands',
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Amman Jordan, AS',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontFamily: 'Quicksands',
                  fontWeight: FontWeight.bold,
                ),


              ),
              const SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.only(left: width*0.2 ,right: width*0.2 ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: const[
                         Text(
                          '20K',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                         SizedBox(height: 5),
                         Text(
                          'Followers',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                      ],


                    ),
                    Column(
                      children: const[
                         Text(
                          '86',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                         SizedBox(height: 5),
                         Text(
                          'Trips',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: const[
                         Text(
                          '32',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                         SizedBox(height: 5),
                         Text(
                          'Bucket list',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                      ],


                    ),


                  ],
                ),
              )

            ],
          ),

          Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
            child: Row(
              children: [
                IconButton(onPressed: (){}, icon: const Icon(Icons.table_chart,color: Colors.grey,size: 20)),
                IconButton(onPressed: (){}, icon: const Icon(Icons.menu,color: Colors.grey,size: 20,)),
                const SizedBox(height: 20),

              ],
            ),
          ),
          _buildImage("assets/beach1.jpg"),
          _buildImage("assets/beach2.jpg"),
          _buildImage("assets/beach3.jpg"),
          _buildImage("assets/beach1.jpg"),
          _buildImage("assets/beach2.jpg"),
          _buildImage("assets/beach3.jpg"),

        ],


      ),
    );
  }

  Widget _buildImage(String pict) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
         Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: AssetImage(pict),
                            fit: BoxFit.cover)),
                  ),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Maui Summer 2022',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                        fontFamily: 'Quicksands',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        Text(
                          'Yousef Added 50 photos',
                          style: TextStyle(
                            color: Colors.black45,
                            fontFamily: 'Quicksands',
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          '.',
                          style: TextStyle(
                            color: Colors.green,
                            fontFamily: 'Quicksands',
                            fontSize: 20,
                          ),
                        ),
                        Icon(
                          Icons.access_time,
                          color: Colors.grey,
                          size: 15,
                        ),
                        Text(
                          '2 hour ago',
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Quicksands',
                            fontSize: 15,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      iconSize: 30,
                      icon: const Icon(Icons.send),
                      color: Colors.grey,
                    ),
                    IconButton(
                      onPressed: () {},
                      iconSize: 30,
                      icon: const Icon(Icons.mode_comment_outlined),
                      color: Colors.grey,
                    ),
                    IconButton(
                      onPressed: () {},
                      iconSize: 30,
                      icon: const Icon(Icons.favorite_border_outlined),
                      color: Colors.grey,
                    ),
                  ],
                )
              ],
            ),
          ),



        ],
      ),
    );
  }
}
