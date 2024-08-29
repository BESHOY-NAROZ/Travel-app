import 'package:flutter/cupertino.dart';

class AppSize {
  static Size? _size;
  static Orientation? _orientation;
  static double? _designHeight;
  static double? _designWidth;
  static double? _myDeviceHeight;
  static double? _myDeviceWidth;
  static double? _finalSize;
  static double? _finalHeightSize;
  static double? _finalWidthSize;
  static double? _screenHeight;
  static double? _screenWidth;

  static void init(
      {required BuildContext context,
      required double designHeight,
      required double designWidth,
      required bool usingStatusBarHeight}) {
    _size = MediaQuery.of(context).size;
    _orientation = MediaQuery.of(context).orientation;
    _designHeight = designHeight;
    _designWidth = designWidth;
    _screenHeight = _size!.height;
    _screenWidth = _size!.width;
    /*if you didn't use STATUS BAR like (List View or SafeArea) remove STATUS BAR Height , but if
    you use STATUS BAR  like (Column) don't remove STATUS BAR Height.
    And STATUS BAR Height is MediaQuery.of(context).padding.top
    */
    _myDeviceHeight = _orientation == Orientation.portrait
        ? usingStatusBarHeight
            ? _screenHeight!
            : _screenHeight! - MediaQuery.of(context).padding.top
        : usingStatusBarHeight
            ? _screenWidth!
            : _screenWidth! - MediaQuery.of(context).padding.top;
    _myDeviceWidth = _orientation == Orientation.portrait ? _screenWidth : _screenHeight;
  }

  static double getHeight(double requiredSize) {
    _finalHeightSize = requiredSize * (_myDeviceHeight! / _designHeight!);
    return _finalHeightSize!;
  }

  static double getMainSize(double requiredSize) {
    double scaleFactor = _myDeviceWidth! * .956;
    double totalScaleFactor = scaleFactor / _designWidth!;
    _finalSize = (requiredSize * totalScaleFactor);
    return _finalSize!;
  }

  static double getWidth(double requiredWidth) {
    _finalWidthSize = requiredWidth * (_myDeviceWidth! / _designWidth!);
    return _finalWidthSize!;
  }
}
// static double getMainSize(double requiredSize) {
//   _finalSize = (_mainWidth!  * (requiredSize / _designWidth!));
//   return _finalSize!;
// }
