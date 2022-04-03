import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class GetBarBer extends StatefulWidget {

  final int index ;
  final String imgPath;
  final String name;

  const GetBarBer({Key? key, required this.imgPath, required this.name ,required this.index}) : super(key: key);
  @override
  State<GetBarBer> createState() =>
      _GetBarBerState(imgPath:imgPath ,name: name,index:index);
}

class _GetBarBerState extends State<GetBarBer> {
  final int index ;
  final String imgPath;
  final String name;
  var selectedDate = 1;

  _GetBarBerState({required this.imgPath, required this.name, required this.index });

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Stack(
          children: [
            Container(
            width: 100,
            height: 130,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image:   DecorationImage(
                    image: AssetImage(widget.imgPath),
                    fit: BoxFit.cover
                )
            ) ,
          ),
            InkWell(
              onTap: (){
                selectbarber(index);
              },
              child: Container(
                  width: 100,
                  height: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: switchColor(index)
                  )
              ) ,
            ),
          ],
        ),
        Text(name)
      ],
    ) ;
  }

  Color switchColor(date){
    if ( date == selectedDate) {
      return Colors.green.withOpacity(0.25) ;
    } else {
      return Colors.transparent;
    }
  }

  void selectbarber(date) {
    setState(() {
      selectedDate = date;
    });
  }

}
