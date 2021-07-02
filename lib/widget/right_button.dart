import 'package:flutter/material.dart';

class RightButton extends StatelessWidget {
  const RightButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      ),
      Center(
          child: Icon(
        Icons.arrow_right_alt,
        size: 50,
      ))
    ]);
  }
}
