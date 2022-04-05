
import 'package:flutter/material.dart';
import 'package:mian/currency_exchange/currencyService.dart';
import 'package:mian/currency_exchange/red_input.dart';
import 'package:mian/currency_exchange/white_input.dart';

class DashboardPage extends StatefulWidget {
  final  currencyVal;
  final convertedCurrency;
  final currencyOne;
  final currenctTwo;
  final isWhite;

  const DashboardPage(
      {this.convertedCurrency,
      this.currenctTwo,
      this.currencyOne,
      this.currencyVal,
      this.isWhite});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Material(
      child: Stack(
        children: [
          Container(
            width: width,
            height: height,
            color: Colors.white,
          ),
          Container(
            width: width,
            height: height * 0.5,
            color: const Color(0xFFEC5759),
          ),
          Container(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {

                    },
                    child: Text(
                      CurrencyService().getCurrencyString(widget.currencyOne),
                      style: const TextStyle(
                          fontSize: 20,
                          fontFamily: "Quicksands",
                          color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {

                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
                          InputRedPge(
                              originalCurrency: widget.currencyOne,
                              convertedCurrency: widget.currenctTwo )));
                    },
                    child: Text(
                      widget.currencyVal.toString() ,
                      style: const TextStyle(
                        fontFamily: "quicksands",
                          fontSize: 120,
                          color: Colors.white),
                    ),
                  ),
                  Text(
                    widget.currencyOne,
                    style: const TextStyle(
                      fontSize: 17,fontFamily: "Quicksands",color: Color(0xFFFFB6B6),fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(height: 25),
                  Container(
                    height: 125,width: 125,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(63),
                        color: Colors.white,
                        border: Border.all(color: Color(0xFFEC5759),width: 5,style: BorderStyle.solid)
                      ),
                    child:    Center(
                      child: widget.isWhite?
                      Icon(Icons.arrow_upward,size: 60,color: const Color(0xFFec5759),)
                          :
                      Icon(Icons.arrow_downward,size: 60,color: const Color(0xFFec5759),)
                      ,),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    widget.currenctTwo,
                    style: const TextStyle(
                        fontSize: 17,fontFamily: "Quicksands",color: Color(0xFFFFB6B6),fontWeight: FontWeight.bold
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
                          InputWhitePge(
                              originalCurrency: widget.currencyOne,
                              convertedCurrency: widget.currenctTwo )));
                    },
                    child: Text(
                      widget.convertedCurrency.toString() ,
                      style: const TextStyle(
                          fontFamily: "quicksands",
                          fontSize: 120,
                          color: Color(0xFFEC5759)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      CurrencyService().getCurrencyString(widget.currenctTwo),
                      style: const TextStyle(
                          fontSize: 20,
                          fontFamily: "Quicksands",
                          color: Color(0xFFEC5759)),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
