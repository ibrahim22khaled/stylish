import 'package:flutter/material.dart';

class SizeConfig {
  static double? screenWidth;
  static double? screenheight;
  static double? defaultSize;
  static Orientation? orientation;
  
  void init(BuildContext context){
    screenWidth=MediaQuery.of(context).size.width;
    screenheight=MediaQuery.of(context).size.height;
    orientation=MediaQuery.of(context).orientation;

    defaultSize = orientation == Orientation.landscape
    ? screenheight! * 0.024
    : screenWidth! * 0.024;
    print("This is default size ${defaultSize}");
  }
}
