import 'package:flutter/material.dart';
import 'package:watch_store_app/home/component/search_field.dart';
import 'package:watch_store_app/utilities/widget_functions.dart';

import 'brand_card_list.dart';
import 'full_product_card_horizontal_list.dart';
import 'home_app_bar.dart';
import 'title_more_bar.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size mediasize = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    double screenHorizontalPadding = 20.0;
    double screenVerticalPadding = 0.0;
    print('width ${mediasize.width}');
    print('height ${mediasize.height}');

    final sidePadding = EdgeInsets.symmetric(
        horizontal: screenHorizontalPadding, vertical: screenVerticalPadding);

    return SafeArea(
      child: Padding(
        padding: sidePadding,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeAppBar(),
              addVerticalSpace(15),
              Text(
                'Welcome, Jack',
                style: themeData.textTheme.headline1,
              ),
              addVerticalSpace(15),
              SearchField(
                width: mediasize.width - 2 * screenHorizontalPadding,
                height: mediasize.height,
              ),
              addVerticalSpace(25),
              TitleMoreBar(barTitle: 'Trending'),
              addVerticalSpace(15),
              FullProductCardHorizontalList(),
              addVerticalSpace(15),
              TitleMoreBar(barTitle: 'Popular Brands'),
              addVerticalSpace(15),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      BrandCardList(1),
                      addVerticalSpace(15),
                      BrandCardList(0),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
