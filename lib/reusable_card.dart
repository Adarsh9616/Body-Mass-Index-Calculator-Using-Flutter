import 'package:flutter/material.dart';

class ReusableBox extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  ReusableBox({@required this.colour, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
