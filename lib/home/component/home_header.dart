import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  final double width;
  final double height;

  HomeHeader({this.height, this.width});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    double searchBoxPadding = 5.0;

    double searchBoxWidth = width - 2 * searchBoxPadding;
    double searchBoxHeight = height * 0.2;

    double searchIconWidth = searchBoxWidth * 0.1;
    double searchFieldWidth = searchBoxWidth - searchIconWidth;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: searchBoxPadding),
      child: Container(
        width: searchBoxWidth,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextField(
          onChanged: (value) => print(value),
          decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 1.0, vertical: 1.0),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              hintText: "Search product",
              prefixIcon: Icon(Icons.search)),
        ),
      ),
    );
  }
}
