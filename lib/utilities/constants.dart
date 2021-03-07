import 'package:flutter/material.dart';

const kSearchSvg = 'assets/icons/search.svg';
const kSideListSvg = 'assets/icons/format_align_left.svg';
const kShoppingCart = 'assets/icons/shopping_cart.svg';
const kArrowRight = 'assets/icons/arrow_right.svg';
const kBackSpace = 'assets/icons/backspace.svg';
const kHeartFilled = 'assets/icons/heart_filled.svg';
const kHeartBorder = 'assets/icons/heart_border.svg';
const kHomeRounded = 'assets/icons/home_rounded.svg';

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

const COLOR_BLACK = Color.fromRGBO(48, 47, 48, 1.0);
const COLOR_GREY = Color.fromRGBO(141, 141, 141, 1.0);
const COLOR_GOLDPINK = Color.fromRGBO(170, 126, 111, 1.0);

const COLOR_WHITE = Colors.white;
const COLOR_DARK_BLUE = Color.fromRGBO(45, 88, 181, 1.0);

const TextTheme TEXT_THEME_DEFAULT = TextTheme(
    headline1: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 35),
    headline2: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 22),
    headline3: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 20),
    headline4: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 16),
    headline5: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 14),
    headline6: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 12),
    bodyText1: TextStyle(color: COLOR_BLACK, fontSize: 16),
    bodyText2: TextStyle(color: COLOR_GREY, fontSize: 16),
    caption:
        TextStyle(color: COLOR_GREY, fontSize: 16, fontWeight: FontWeight.w500),
    subtitle1: TextStyle(
        color: COLOR_BLACK, fontSize: 12, fontWeight: FontWeight.w400),
    subtitle2: TextStyle(
        color: COLOR_GREY, fontSize: 12, fontWeight: FontWeight.w400));

const TextTheme TEXT_THEME_SMALL = TextTheme(
    headline1: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 30),
    headline2: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 20),
    headline3: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 18),
    headline4: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 14),
    headline5: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 12),
    headline6: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 10),
    bodyText1: TextStyle(color: COLOR_BLACK, fontSize: 14),
    bodyText2: TextStyle(color: COLOR_GREY, fontSize: 14),
    caption:
        TextStyle(color: COLOR_GREY, fontSize: 14, fontWeight: FontWeight.w500),
    subtitle1: TextStyle(
        color: COLOR_BLACK, fontSize: 10, fontWeight: FontWeight.w400),
    subtitle2: TextStyle(
        color: COLOR_GREY, fontSize: 10, fontWeight: FontWeight.w400));
