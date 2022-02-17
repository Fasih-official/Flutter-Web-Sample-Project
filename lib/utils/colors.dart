import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const appBarColor = Color(0xFF5956E9);
var textColorLightBlack = const Color(0xff4C4C4C);
var textColorLightSkyBlue = const Color(0xff438EEC);
var textColorLightGrey = const Color(0xff8A8A8A);
var textColorLighterGrey = const Color(0xffF3F6F8);
var textColorLighterGreyVariation = const Color(0xffF8F8F8);
var btnColorLightPurple = const Color(0xffF4F7FD);
var greenColor = const Color(0xff40B897);

const darkAppBarColor = Color(0xff175071);
var containerColor = const Color(0xffF3F4F4);
var circularBoxColor = const Color(0xff9F9F9F);
var orangeColor = const Color(0xffE65627);
var darkBtnColor = const Color(0xff858585);
var darkGreyColor = const Color(0xff707070);
var fieldColor = const Color(0xffF1F1F1);

var linearGradient = LinearGradient(
  colors: [
    Color(0xff55D3AF),
    Color(0xff40B897),
  ],
);

const MaterialColor appBarColorSwatch = const MaterialColor(
  0xFF5956E9,
  // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
  const <int, Color>{
    50: appBarColor, //10%
    100: appBarColor, //20%
    200: appBarColor, //30%
    300: appBarColor, //40%
    400: appBarColor, //50%
    500: appBarColor, //60%
    600: appBarColor, //70%
    700: appBarColor, //80%
    800: appBarColor, //90%
    900: appBarColor, //100%
  },
);
