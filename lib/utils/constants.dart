import 'package:flutter/material.dart';

const bottomSheetRadius = RoundedRectangleBorder(
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(20.0),
    topRight: Radius.circular(20.0),
  ),
);

const kDecoration = InputDecoration(
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.white30, width: 2.0),
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide:
    BorderSide(color: Colors.lightGreenAccent, width: 2.0),
  ),
);