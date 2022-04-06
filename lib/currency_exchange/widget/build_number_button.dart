import 'package:flutter/material.dart';

class BuildNumberButton extends StatefulWidget {
  final num;

  final VoidCallback calculateNumber;

  BuildNumberButton({required this.num, required this.calculateNumber});

  @override
  State<BuildNumberButton> createState() => _BuildNumberButtonState();
}

class _BuildNumberButtonState extends State<BuildNumberButton> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: widget.calculateNumber,
      child: Container(
          width: 11,
          height: 11,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(height * width * 0.1),
            color: const Color(0xFFEC5759),
          ),
          alignment: Alignment.center,
          child: widget.num == "true"
              ? const Icon(
                  Icons.done,
                  color: Colors.white,
                )
              : Text(widget.num.toString(),
                  style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w600))),
    );
  }
}
