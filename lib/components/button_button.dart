import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({Key? key, required this.onTap,required this.buttonTittle}) : super(key: key);
  final VoidCallback onTap;
  final String buttonTittle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColour,
        margin: const EdgeInsets.only(top: 10.0),
        padding: const EdgeInsets.only(bottom: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(child:  Text(buttonTittle,style: kLargeButtonTextStyle,)),
      ),
    );
  }
}
