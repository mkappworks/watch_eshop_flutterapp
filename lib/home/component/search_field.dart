import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store_app/utilities/constants.dart';

class SearchField extends StatelessWidget {
  final double width;
  final double height;

  SearchField({this.height, this.width});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    double searchBoxPadding = 5.0;

    double searchBoxWidth = width - 2 * searchBoxPadding;
    double searchBoxHeight = height * 0.2;

    double searchIconWidth = searchBoxWidth * 0.1;
    double searchFieldWidth = searchBoxWidth - searchIconWidth;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: searchBoxPadding),
        child: Row(
          children: [
            Container(
              width: searchIconWidth,
              //height: searchBoxHeight,
              child: SvgPicture.asset(
                kSearchSvg,
                color: Colors.grey,
              ),
            ),
            Container(
              width: searchFieldWidth,
              //height: searchBoxHeight,
              child: Center(
                child: TextField(
                  style: themeData.textTheme.bodyText1,
                  onChanged: (value) => print(value),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: "Search...",
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                    hintStyle: themeData.textTheme.caption,
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
