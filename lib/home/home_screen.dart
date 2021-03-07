import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'component/home_body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F7F7),
      //appBar: buildAppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: HomeBody(),
      ),
    );
  }
}
