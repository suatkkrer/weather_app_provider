
import 'package:flutter/material.dart';

class MaxAndMinTemperature extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Max : " + 24.toString() + "C", style: TextStyle(fontSize: 20),),
        Text("Max : " + 12.toString() + "C", style: TextStyle(fontSize: 20),),
      ],
    );
  }
}
