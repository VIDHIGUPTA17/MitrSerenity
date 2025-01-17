// import 'package:firebase_login/constraints.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
const RoundedButton({
  Key? key,
  required this.text,
  required this.press,
  required this.color,
  this.textColor = Colors.white,
}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: ElevatedButton(
          // padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          // color: color,
          // onPressed: press,
            onPressed: (){},
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}