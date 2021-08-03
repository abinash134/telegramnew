import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 50.0,

      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(25.0),
        color: Colors.white,
      ),
      child: Icon(
        Icons.message,
      ),
    );
  }
}
