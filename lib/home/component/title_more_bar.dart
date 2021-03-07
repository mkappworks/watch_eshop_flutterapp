import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store_app/utilities/constants.dart';

class TitleMoreBar extends StatelessWidget {
  final String barTitle;

  TitleMoreBar({this.barTitle});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(barTitle, style: themeData.textTheme.headline3),
      Container(
          child: Row(
        children: [
          Text(
            'more',
            style:
                TextStyle(color: COLOR_GOLDPINK, fontWeight: FontWeight.bold),
          ),
          Container(
              child: SvgPicture.asset(kArrowRight, color: COLOR_GOLDPINK)),
        ],
      ))
    ]);
  }
}
