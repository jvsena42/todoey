import 'package:flutter/material.dart';

const kGreenAccent = Colors.lightGreenAccent;
const kGreen = Colors.lightGreen;
const kWhite = Colors.white;
const kGray = Colors.white30;

const kBottomSheetRadius = RoundedRectangleBorder(
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(20.0),
    topRight: Radius.circular(20.0),
  ),
);

const kInputDecoration = InputDecoration(
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: kGray, width: 2.0),
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide:
    BorderSide(color: kGreenAccent, width: 2.0),
  ),
);

const kBoxDecoration =  BoxDecoration(
  color: kWhite,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(20.0),
    topRight: Radius.circular(20.0),
  ),
);
