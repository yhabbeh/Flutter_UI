import 'package:flutter/material.dart';
import 'package:mian/currency_exchange/currencyService.dart';
import 'package:mian/currency_exchange/widget/build_number_button.dart';

class InputWhitePge extends StatefulWidget {
  final originalCurrency;
  final convertedCurrency;
  final  currencyVal;
  final currencyOne;
  final currenctTwo;
  final isWhite;
  const InputWhitePge(
      {required this.originalCurrency, required this.convertedCurrency, this.currencyVal, this.currencyOne, this.currenctTwo, this.isWhite});

  @override
  State<InputWhitePge> createState() => _InputWhitePgeState();
}

class _InputWhitePgeState extends State<InputWhitePge> {
  double CurrInput = 0.0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 25),
          InkWell(
            onTap: () {
              setState(() {
                CurrInput = 0;
              });
            },
            child: const Text(
              "tab to delete",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Center(
            child: Text(
              CurrInput.toString(),
              style: const TextStyle(
                  fontFamily: "quicksands",
                  fontSize: 70,
                  color: Color(0xFFEC5759)),
            ),
          ),
          const SizedBox(height: 20),

          SizedBox(
            width: width*0.4,
            height: height*0.5,
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              children:  [
                BuildNumberButton(
                    num: 1,
                    calculateNumber:(){
                      calculateNumber(1);
                    }
                ),
                BuildNumberButton(
                    num: 2,
                    calculateNumber:(){
                      calculateNumber(2);
                    }),
                BuildNumberButton(
                    num: 3,
                    calculateNumber:(){
                      calculateNumber(3);
                    }),
                BuildNumberButton(
                    num: 4,
                    calculateNumber:(){
                      calculateNumber(4);
                    }
                ),
                BuildNumberButton(
                    num: 5,
                    calculateNumber:(){
                      calculateNumber(5);
                    }),
                BuildNumberButton(
                    num: 6,
                    calculateNumber:(){
                      calculateNumber(6);
                    }),
                BuildNumberButton(
                    num: 7,
                    calculateNumber:(){
                      calculateNumber(7);
                    }
                ),
                BuildNumberButton(
                    num: 8,
                    calculateNumber:(){
                      calculateNumber(8);
                    }),
                BuildNumberButton(
                    num: 9,
                    calculateNumber:(){
                      calculateNumber(9);
                    }),
                BuildNumberButton(
                    num: ".",
                    calculateNumber:(){
                      calculateNumber(".");
                    }),
                 BuildNumberButton(
                    num: 0,
                    calculateNumber:(){
                      calculateNumber(0);
                    }),

                 BuildNumberButton(
                    num: "true",
                    calculateNumber:(){
                      CurrencyService().convertCurrency(widget.convertedCurrency, widget.originalCurrency, CurrInput, context);
                      
                    }),
            ],),
          ),
        ],
      ),
    );
  }

  void calculateNumber(number){
    if (CurrInput==0){
      setState(() {
        CurrInput = number;
      });
    }else
    {
      setState(() {
        CurrInput = (CurrInput*10) + number ;
      });
    }
  }
 

}
