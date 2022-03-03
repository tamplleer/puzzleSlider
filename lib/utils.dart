import 'package:flutter/material.dart';

class Utils {
  static Color colorBlend(Color firstColor, Color secondColor) {
    print(firstColor.blue + secondColor.blue);
    print(firstColor.green + secondColor.green);
    print(firstColor.red + secondColor.red);
    return Color.fromARGB(
      0xff,
      (firstColor.red + secondColor.red) ~/ 2,
      (firstColor.green + secondColor.green) ~/ 2,
      (firstColor.blue + secondColor.blue) ~/ 2,
    );
  }
}
