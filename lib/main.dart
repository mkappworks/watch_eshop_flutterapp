import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watch_store_app/utilities/constants.dart';
import 'package:watch_store_app/utilities/routes.dart';

import 'home/home_screen.dart';

void main() {
  runApp(ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  double screenWidth = window.physicalSize.width;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: COLOR_WHITE,
          accentColor: COLOR_DARK_BLUE,
          textTheme: screenWidth < 500 ? TEXT_THEME_SMALL : TEXT_THEME_DEFAULT,
          fontFamily: "Montserrat"),
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }
}
