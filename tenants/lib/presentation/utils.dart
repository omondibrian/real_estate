import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:tenants/domain/property/entity/unit_entity.dart';

import '../domain/property/entity/property_entity.dart';

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

TextStyle SafeGoogleFont(
  String fontFamily, {
  TextStyle? textStyle,
  Color? color,
  Color? backgroundColor,
  double? fontSize,
  FontWeight? fontWeight,
  FontStyle? fontStyle,
  double? letterSpacing,
  double? wordSpacing,
  TextBaseline? textBaseline,
  double? height,
  Locale? locale,
  Paint? foreground,
  Paint? background,
  List<Shadow>? shadows,
  List<FontFeature>? fontFeatures,
  TextDecoration? decoration,
  Color? decorationColor,
  TextDecorationStyle? decorationStyle,
  double? decorationThickness,
}) {
  try {
    return GoogleFonts.getFont(
      fontFamily,
      textStyle: textStyle,
      color: color,
      backgroundColor: backgroundColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height,
      locale: locale,
      foreground: foreground,
      background: background,
      shadows: shadows,
      fontFeatures: fontFeatures,
      decoration: decoration,
      decorationColor: decorationColor,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
    );
  } catch (ex) {
    return GoogleFonts.getFont(
      "Source Sans Pro",
      textStyle: textStyle,
      color: color,
      backgroundColor: backgroundColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height,
      locale: locale,
      foreground: foreground,
      background: background,
      shadows: shadows,
      fontFeatures: fontFeatures,
      decoration: decoration,
      decorationColor: decorationColor,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
    );
  }
}

String? requiredValidator(String? value) {
  if (value == null) {
    return "Required";
  }
  if (value.isEmpty) {
    return "Required";
  }
  return null;
}


String? phoneValidator(String? value) {
  if (value == null) {
    return "Required";
  }
  if (value.isEmpty) {
    return "Required";
  } else if (value.length != 10) {
    return "Please provide valid phone number eg 0712234576";
  } else {
    return null;
  }
}

String? passwordValidator(String? value) {
  if (value == null) {
    return "Required";
  }
  if (value.isEmpty) {
    return "Required";
  } else if (value.length < 6) {
    return "Should be atleast 6 characters";
  } else if (value.length > 15) {
    return "Should be atmost 15 characters";
  } else {
    return null;
  }
}

String? emailValidator(String? string) {
  // Null or empty string is invalid
  if (string == null || string.isEmpty) {
    return "Required";
  }
  string = string.trim();

  const pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
  final regExp = RegExp(pattern);

  if (!regExp.hasMatch(string)) {
    return "Enter a valid email address";
  }
  return null;
}

List<UnitEntity> extractUnits(List<PropertyEntity> listings) {
  List<UnitEntity> currentUnits = [];
  for (var property in listings) {
    for (var i = 0; i < property.propertyUnits.length; i++) {
      currentUnits.add(property.propertyUnits[i]);
    }
  }
  return currentUnits;
}

Map<String, List<UnitEntity>> groupedUnits(List<UnitEntity> units) {
  Map<String, List<UnitEntity>> mapRes = <String, List<UnitEntity>>{};
  mapRes.addAll({"Normal": []});
  mapRes.addAll({"Budget": []});
  mapRes.addAll({"Luxurious": []});
  for (var unit in units) {
    if (unit.type == "Normal") {
      var tempUnits = mapRes["Normal"] ?? [];
      tempUnits.add(unit);
      mapRes.addAll({"Normal": tempUnits});
    } else if (unit.type == "Budget") {
      var tempUnits = mapRes["Budget"] ?? [];
      tempUnits.add(unit);
      mapRes.addAll({"Budget": tempUnits});
    } else {
      var tempUnits = mapRes["Luxurious"] ?? [];
      tempUnits.add(unit);
      mapRes.addAll({"Luxurious": tempUnits});
    }
  }
  print(mapRes);

  return mapRes;
}
