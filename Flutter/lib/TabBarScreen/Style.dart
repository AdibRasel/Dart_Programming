import 'dart:ui';

import 'package:flutter/material.dart';

TextStyle Heading(context) {
  var sizeWide = MediaQuery.of(context).size.width;
  var sizeHeight = MediaQuery.of(context).size.height;
  var sizeOrientation = MediaQuery.of(context).orientation; // landscape or portrait

  if (sizeWide < 700) {
    return TextStyle(
      backgroundColor: Colors.amber,
      color: Colors.black,
      fontSize: 50,
      fontWeight: FontWeight.bold,
    );
  } else {
    return TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );
  }
}
