import 'package:flutter/material.dart';
import 'package:watch_store_app/details/details_screen.dart';
import 'package:watch_store_app/models/product_model.dart';
import 'package:watch_store_app/utilities/constants.dart';
import 'package:watch_store_app/utilities/widget_functions.dart';

class FullProductCard extends StatelessWidget {
  final GestureTapCallback press;
  final ProductModel product;

  FullProductCard({this.press, this.product});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Padding(
      padding: EdgeInsets.only(top: 20.0, right: 20.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: COLOR_WHITE,
        ),
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(
            context,
            DetailsScreen.routeName,
            arguments: ProductDetailsArguments(product: product),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Container(
                      width: 220.0,
                      height: 220.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: product.colors[0],
                      ),
                    ),
                    Positioned(
                      top: -40,
                      child: SizedBox(
                        width: 220.0,
                        height: 275.0,
                        child: Hero(
                            tag: product.id.toString(),
                            child: Image.asset(product.images[0])),
                      ),
                    )
                  ],
                ),
              ),
              Text(product.title, style: themeData.textTheme.headline4),
              Text(product.subtitle, style: themeData.textTheme.subtitle2),
              addVerticalSpace(10.0),
              Text("\$${product.price}",
                  style: themeData.textTheme.headline2
                      .copyWith(color: COLOR_DARK_BLUE)),
              addVerticalSpace(10.0),
            ],
          ),
        ),
      ),
    );
  }
}
