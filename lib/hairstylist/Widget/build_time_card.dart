import 'package:flutter/material.dart';

class BuildTimeCard extends StatefulWidget {
  const BuildTimeCard({Key? key, this.time}) : super(key: key);

  final time;

  @override
  State<BuildTimeCard> createState() => _BuildTimeCardState(this.time);
}

class _BuildTimeCardState extends State<BuildTimeCard> {
  final time;
  var chekedcolor;

  _BuildTimeCardState(this.time);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        chekcolor(time);
        _BuildTimeCardState(chekedcolor );
      },
      child: Container(
          width: 50,
          decoration: BoxDecoration(
            color: switchcolor(time),
            borderRadius: BorderRadius.circular(5)
          ),
          child: Center(
            child: Text(
                (10 + time % 24).toString() +
                " : " +
                (30 * (time % 2)).toString() +
                (time % 2 == 0 ? "0" : " "),
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),

            ),
          )
      ),
    );
  }


  Color switchcolor(time){
    if (time == chekedcolor){
      return Colors.black.withOpacity(0.7);
    }
    else{
      return Colors.grey.withOpacity(0.4);
    }

  }
  void  chekcolor(time){
    setState(() {
      chekedcolor = time;
    });
    return chekedcolor;
  }
}
