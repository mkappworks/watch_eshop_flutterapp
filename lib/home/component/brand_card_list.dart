import 'package:flutter/material.dart';
import 'package:watch_store_app/models/brand_model.dart';
import 'package:watch_store_app/utilities/constants.dart';
import 'package:watch_store_app/utilities/widget_functions.dart';

class BrandCardList extends StatelessWidget {
  final int x;
  BrandCardList(this.x);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            demoBrands.length,
            (index) {
              if (demoBrands[index].id % 2 == x)
                return BrandCard(brands: demoBrands[index]);

              return SizedBox.shrink();
            },
          ),
        ],
      ),
    );
  }
}

class BrandCard extends StatelessWidget {
  final BrandModel brands;
  BrandCard({this.brands});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Padding(
      padding: EdgeInsets.only(right: 25.0),
      child: Container(
        width: 250.0,
        //height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 75.0,
                height: 75.0,
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: brands.color,
                ),
                child: Image.asset(brands.image),
              ),
              addHorizontalSpace(10.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(brands.title, style: themeData.textTheme.headline6),
                  addVerticalSpace(10.0),
                  Text(brands.country,
                      style: themeData.textTheme.headline6
                          .copyWith(color: COLOR_GREY)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
