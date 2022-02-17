import 'package:flutter/material.dart';
import 'package:scrips_core/ui_helpers/app_colors.dart';

import 'colors.dart';

appCounterDecoration(color) =>
    BoxDecoration(
      shape: BoxShape.circle,
      color: color,
    );
var appSeparationLineDecoration = BoxDecoration(
  shape: BoxShape.rectangle,
  color: Colors.grey.withOpacity(0.3),
);

var appSeparationDarkLineDecoration = BoxDecoration(
  shape: BoxShape.rectangle,
  color: textColorLightGrey,
);

rectangularWhiteBoxDecorationWithRadius(double radius) =>
    BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(radius),
        color: Colors.white);

rectangularBgColorBoxDecorationWithRadius(double radius) =>
    BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(radius),
        color: bgColor);

rectangularPurpleBarDecorationWithRadius(double radius) =>
    BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(radius),
        color: vaccinesColor);

rectangularWhiteBoxDecorationWithRadiusBlackBorder(double radius) =>
    BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(color: Colors.black.withOpacity(0.1)),
        color: Colors.white);

rectangularWhiteBoxDecorationWithRadiusSelectedBorder(double radius) =>
    BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(color: appBarColor),
        color: Colors.white);

rectangularWhiteBoxDecorationWithRadiusElevation(double radius,
    double elevation) =>
    BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(radius),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: elevation,
          ),
        ]);

rectangularLightPurpleBoxDecorationWithRadius(double radius) =>
    BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(radius),
        color: btnColorLightPurple,);

rectangularAppBarBoxDecorationWithRadiusElevation(double radius,
    double elevation) =>
    BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(radius),
        color: appBarColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: elevation,
          ),
        ]);

rectangularGreyBoxDecorationWithRadiusElevation(double radius,
    double elevation) =>
    BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(radius),
        color: appBarColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: elevation,
          ),
        ]);

rectangularDarkGreyBoxDecorationWithRadiusElevation(double radius,
    double elevation) =>
    BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(radius),
        color: darkGreyColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: elevation,
          ),
        ]);

rectangularDarkAppBarColorBoxDecorationWithRadiusElevation(double radius,
    double elevation) =>
    BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(radius),
        color: darkAppBarColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: elevation,
          ),
        ]);

densedFieldDecorationWithoutPadding(
    {hint, verticalPad = 0.0, horizontalPad = 0.0}) =>
    InputDecoration(
      isDense: true,
      counterText: '',
      contentPadding: EdgeInsets.symmetric(
          vertical: verticalPad, horizontal: horizontalPad),
      border: InputBorder.none,
      hintText: hint,
    );

rectangularTextColorBoxDecorationWithRadiusElevation(double radius,
    double elevation) =>
    BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(radius),
        color: appBarColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: elevation,
          ),
        ]);

rectangularContainerBoxDecorationWithRadiusElevation(double radius,
    double elevation) =>
    BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(radius),
        color: containerColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: elevation,
          ),
        ]);

rectangularCustomColorBoxDecorationWithRadius(double topLeft,
    double bottomLeft,
    double bottomRight,
    double topRight,
    Color color,) =>
    BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(topLeft),
            bottomLeft: Radius.circular(bottomLeft),
            bottomRight: Radius.circular(bottomRight),
            topRight: Radius.circular(topRight)),
        color: color);

optionsBoxDecoration() =>
    BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.black,
          width: 0.6,
        )
    );

selectedOptionsBoxDecoration() =>
    BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      border: Border.all(
          color: appBarColor,
          width: 2.0
      ),
    );

ellipticalCustomColorBoxDecorationWithRadius(double x,
    double y,
    Color color,) =>
    BoxDecoration(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.elliptical(
            x,
            y,
          ),
        ),
        color: color);

rectangularTextColorBoxDecorationWithDarkRadiusElevation(double radius,
    double elevation) =>
    BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(radius),
        color: darkAppBarColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: elevation,
          ),
        ]);

rectangularTransparentBoxDecorationWithRadiusElevation(double radius,
    double elevation) =>
    BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(radius),
        color: Colors.transparent,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: elevation,
          ),
        ]);

rectangularGreyBorderDecorationWithRadius(double radius) =>
    BoxDecoration(
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.all(Radius.circular(radius)),
      border: Border.all(color: textColorLightGrey.withOpacity(0.4)),
    );

rectangularLighterGreyBoxDecorationWithRadius(double radius) =>
    BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(radius),
        color: textColorLighterGreyVariation
    );

rectangularAppBarColorBoxDecorationWithRadius(double topLeft,
    double bottomLeft,
    double bottomRight,
    double topRight,
    Color color,) =>
    BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(topLeft),
            bottomLeft: Radius.circular(bottomLeft),
            bottomRight: Radius.circular(bottomRight),
            topRight: Radius.circular(topRight)),
        color: color);

rectangularOrangeColorBoxDecorationWithRadius(double topLeft,
    double bottomLeft,
    double bottomRight,
    double topRight,) =>
    BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(topLeft),
            bottomLeft: Radius.circular(bottomLeft),
            bottomRight: Radius.circular(bottomRight),
            topRight: Radius.circular(topRight)),
        color: orangeColor);
