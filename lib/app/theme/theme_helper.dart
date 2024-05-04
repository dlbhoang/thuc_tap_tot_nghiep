

import 'package:flutter/material.dart';
import 'package:food/app/core/app_export.dart';


LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
class ThemeHelper{
  final _appTheme = PrefUtils().getThemeData();
  Map<String,ColorScheme> supportedColorScheme ={
    'lightCode':ColorSchemes.lightCodeColorScheme
  };

  Map<String,LightCodeColors> supportedCustomColor ={
    'lightCode':LightCodeColors()
  };

  void changeTheme(String newTheme){
    PrefUtils().setThemeData(newTheme);
    Get.forceAppUpdate();
  }

LightCodeColors getThemeColors(){
  var colorScheme = supportedCustomColor[_appTheme];
  if(colorScheme != null) {
    return colorScheme;
  } else {
    return LightCodeColors();
  }
}


  ThemeData getThemeData(){
    var colorSheme=supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorSheme,
      textTheme: TextThemes.textTheme(colorSheme),
      scaffoldBackgroundColor: colorSheme.onPrimaryContainer.withOpacity(1),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style:ElevatedButton.styleFrom(
          backgroundColor: colorSheme.primary,
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4
          ),
          padding: EdgeInsets.zero
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style:OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color:colorSheme.primary,
            width: 1
          ),
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6)
          ),visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4
          ),
          padding: EdgeInsets.zero
        )
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith((states){
          if(states.contains(MaterialState.selected)){
            return colorSheme.primary;
          } 
          return Colors.transparent;
        }),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4
        )
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorSheme.onPrimaryContainer.withOpacity(1)
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color:appTheme.gray100
      )
    );
  }

  LightCodeColors themeColor() => getThemeColors();

  ThemeData themeData() => getThemeData();
}

class TextThemes{
  static TextTheme textTheme(ColorScheme colorScheme)=> TextTheme(
    bodyLarge: TextStyle(
      color:appTheme.blueGray400,
      fontSize:16.fSize,
      fontFamily: 'Yu Gothic UI',
      fontWeight: FontWeight.w400
    ),
    bodyMedium: TextStyle(
      color:appTheme.black900.withOpacity(0.62),
      fontSize: 14.fSize,
      fontFamily: 'Yu Gothic UI',
      fontWeight: FontWeight.w400
    ),
    bodySmall: TextStyle(
      color:colorScheme.onPrimaryContainer.withOpacity(1),
      fontSize: 12.fSize,
      fontFamily: 'Yu Gothic UI',
      fontWeight: FontWeight.w700
    ),
    displaySmall: TextStyle(
      color:appTheme.black900,
      fontSize: 37.fSize,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w700
    ),
    headlineLarge: TextStyle(
      color:appTheme.black900,
      fontSize: 33.fSize,
      fontFamily: 'Yu Gothic UI',
      fontWeight: FontWeight.w300
    ),
       headlineMedium: TextStyle(
      color:appTheme.black900,
      fontSize: 24.fSize,
      fontFamily: 'Yu Gothic UI',
      fontWeight: FontWeight.w300
    ),
      labelLarge: TextStyle(
      color:colorScheme.onPrimaryContainer.withOpacity(1),
      fontSize: 12.fSize,
      fontFamily: 'Yu Gothic UI',
      fontWeight: FontWeight.w600
    ),
      titleLarge: TextStyle(
      color:appTheme.black900,
      fontSize: 20.fSize,
      fontFamily: 'Yu Gothic UI',
      fontWeight: FontWeight.w300
    ),
      titleMedium: TextStyle(
      color:appTheme.black900,
      fontSize: 16.fSize,
      fontFamily: 'Yu Gothic UI',
      fontWeight: FontWeight.w600
    ),
      titleSmall: TextStyle(
      color:colorScheme.onPrimaryContainer.withOpacity(1),
      fontSize: 14.fSize,
      fontFamily: 'Yu Gothic UI',
      fontWeight: FontWeight.w700
    )
  );
}

class LightCodeColors{
  Color get amber600 => const Color(0XFFF8AF0C);

  Color get black900 => const Color(0XFF000000);

  Color get blueA200 => const Color(0XFF4285F4);

  Color get blueGray400 => const Color(0XFF868686);

  Color get blueGray40001 => const Color(0XFF888888);

  Color get gray100 => const Color(0XFFF3F1F1);

  Color get gray50 => const Color(0XFFFAFAFA);

  Color get green600 => const Color(0XFF22A45D);

  Color get orange30063 => const Color(0X63F8B64C);

  Color get orange50 => const Color(0XFFF1EFDD);
}


class ColorSchemes {
  static const lightCodeColorScheme =  ColorScheme.light(
    primary: Color(0XFFEEA634),
    secondaryContainer: Color(0XFF000E07),
    onPrimary: Color(0XFF3A3A3A),
    onPrimaryContainer: Color(0X75FFFFFF),
    onSecondaryContainer: Color(0X0F395998)
  );
}