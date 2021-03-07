import 'package:flutter/material.dart';
import 'package:watch_store_app/models/product_model.dart';
import 'package:watch_store_app/utilities/constants.dart';
import 'package:watch_store_app/utilities/widget_functions.dart';

class ProductDetailsCard extends StatelessWidget {
  final ProductModel product;

  ProductDetailsCard({
    @required this.product,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(product.title, style: themeData.textTheme.headline2),
            addVerticalSpace(10.0),
            Text("\$${product.price}",
                style: themeData.textTheme.headline2
                    .copyWith(color: COLOR_DARK_BLUE)),
          ],
        ),
        addVerticalSpace(15.0),
        Text(
          product.description,
          style: themeData.textTheme.subtitle1.copyWith(fontSize: 14.0),
        )
      ],
    );
  }
}
