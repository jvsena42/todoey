
import 'package:flutter/material.dart';
import 'package:todoey/utils/constants.dart';

class ImageCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: Icon(
        Icons.list,
        size: 30.0,
        color: kGreen,
      ),
      backgroundColor: kWhite,
      radius: 30.0,
    );
  }
}