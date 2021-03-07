import 'package:flutter/material.dart';
import 'package:watch_store_app/home/component/box_icon_button.dart';
import 'package:watch_store_app/home/home_screen.dart';
import 'package:watch_store_app/utilities/constants.dart';

class CartAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BoxIconButton(
          icon: kBackSpace,
          press: () => Navigator.pop(context),
        ),
        BoxIconButton(
          icon: kHomeRounded,
          press: () => Navigator.pushNamed(
            context,
            HomeScreen.routeName,
          ),
        ),
      ],
    );
  }
}
