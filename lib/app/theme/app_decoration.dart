

import 'package:flutter/widgets.dart';
import 'package:food/app/core/app_export.dart';

class AppDecoration{

  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
    color:theme.colorScheme.onPrimaryContainer
  );
  static BoxDecoration get fillOrange => BoxDecoration(
    color:appTheme.orange30063,
  );
}

class BorderRadiusStyle{
  static BorderRadius get circleBorder194 => BorderRadius.circular(
    194.h
  );
}