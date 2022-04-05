import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void ConfirmingDialogButton({
  required BuildContext context,
}) => showDialog(
    barrierDismissible: true,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Confirmning"),
        content: const Text("Are you sure to buy this item "),
        actions: [
          InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              width: 70,
            height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.green,
                boxShadow: const [BoxShadow(color: Colors.green,blurRadius:10)]
                        ),

              child: const Center(
                child:  Text(
                  "Yes",
                  style: TextStyle(fontSize:20, color: Colors.white60,fontFamily: "Montserrat"),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              width: 70,
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
                  boxShadow: const [BoxShadow(color: Colors.red,blurRadius:10)]
              ),
              child:const Center(
                child:  Text(
                  "No",
                  style: TextStyle(fontSize: 20, color: Colors.white60,fontFamily: "Montserrat"),
                ),
              ),
            ),
          ),
        ],
      );
    });

