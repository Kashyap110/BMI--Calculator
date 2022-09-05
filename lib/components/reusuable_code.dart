import 'package:flutter/material.dart';

class ReusableCode extends StatelessWidget {
  //Crete constructor to change the colour we wanted to be
   const ReusableCode({Key? key, required this.colour, required this.cardChild, required this.onPress}) : super(key: key);
  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: cardChild,
        margin:  const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onTap: (){onPress();},
    );
  }
}
