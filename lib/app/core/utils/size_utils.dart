// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

const num FIGMA_DESIGN_WIDTH = 375;
const num FIGMA_DESIGN_HEIGHT = 812;
const num FIGMA_DESIGN_STATUS_BAR = 0;

extension ResponsiveExtenstion on num{
  double get _width => SizeUtils.width;
  double get _height => SizeUtils.height;
  double get h => ((this * _width)/FIGMA_DESIGN_WIDTH);
  double get v => ((this * _height)/FIGMA_DESIGN_HEIGHT-FIGMA_DESIGN_STATUS_BAR);
  double get adaptSize {
    var height=v;
    var width=h;
    return height<width ? height.toDoubleValue() : width.toDoubleValue();
  }
  double get fSize => adaptSize;
}

extension FormatExtension on double{
  double toDoubleValue({int fractionDigits=2}){
    return double.parse(toStringAsFixed(fractionDigits));
  }

  double isNoneZero({num defaultValue=0.0}){
    return this > 0 ? this : defaultValue.toDouble();
  }
}

enum DeviceType {mobile,tablet,desktop}

typedef ResponsiveBuild = Widget Function(
  BuildContext context, Orientation orientation, DeviceType deviceType
);


class Sizer extends StatelessWidget {
  const Sizer({super.key, required this.builder});
final ResponsiveBuild builder;
  @override
  Widget build(BuildContext context) {
   return LayoutBuilder(builder: (context,constraints){
      return OrientationBuilder(builder: (context,orientation){
        SizeUtils.setScreenSize(constraints, orientation);
        return builder(context, orientation, SizeUtils.deviceType);
      });
   });
  }
}

class SizeUtils {
  static late BoxConstraints boxConstraints;
  static late Orientation orientation;
  static late DeviceType deviceType;
  static late double height;
  static late double width;
  static void setScreenSize(
    BoxConstraints constraints,
    Orientation currentOrientation, 
  ){
    boxConstraints = constraints;
    orientation = currentOrientation;
    if (orientation == Orientation.portrait){
      width = boxConstraints.maxWidth.isNoneZero(defaultValue: FIGMA_DESIGN_WIDTH);
      height = boxConstraints.maxHeight.isNoneZero();
    } else{
      width = boxConstraints.minWidth.isNoneZero(defaultValue:FIGMA_DESIGN_WIDTH);
      height = boxConstraints.maxHeight.isNoneZero();
    }
    deviceType=DeviceType.mobile;
  }

}