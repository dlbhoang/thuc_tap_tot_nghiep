import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}

class CustomTextStyles {
  static get bodyLargePoppinsOnPrimary =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyLargeSecondaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get bodyLargeSecondaryContainer_1 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer.withOpacity(1),
      );
  static get bodySmallBluegray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
}
