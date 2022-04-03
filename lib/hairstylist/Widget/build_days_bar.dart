import 'package:flutter/material.dart';

class BuildDaysBar extends StatefulWidget {

  final int date;
  final String day;

  const BuildDaysBar({Key? key, required this.date, required this.day})
      : super(key: key);

  @override
  State<BuildDaysBar> createState() => _BuildDaysBarState(date:date,day:day );

}

class _BuildDaysBarState extends State<BuildDaysBar> {
  final int date;
  final String day;
  var selectedDate = 2;

  _BuildDaysBarState({required this.date, required this.day});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        selectDate (date);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn,
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: switchColor(widget.date),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.date.toString(),
              style:  TextStyle(
                  fontFamily: "Quicksands",
                  fontSize: 15,
                  fontWeight: FontWeight.bold,color: switchContainColor(widget.date)
              ),

            ),
            Text(
              widget.day,
              style: TextStyle(
                  fontFamily: "Quicksands",
                  fontSize: 15,
                 color: switchContainColor(widget.date),
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Color switchColor(date) {
    if ( date == selectedDate) {
      return Colors.black.withOpacity(0.8);
    } else {
      return Colors.grey.withOpacity(0.2);
    }
  }

  Color switchContainColor(date){
    if ( date == selectedDate) {
      return Colors.white ;
    } else {
      return Colors.black;
    }
  }

  void selectDate(date) {
    setState(() {
      selectedDate = date;
    });
  }
}
