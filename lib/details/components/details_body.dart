import 'package:flutter/material.dart';
import 'package:watch_store_app/details/components/details_app_bar.dart';
import 'package:watch_store_app/details/components/product_images.dart';
import 'package:watch_store_app/models/product_model.dart';
import 'package:watch_store_app/utilities/widget_functions.dart';

import 'details_body_bottom_buttons.dart';
import 'product_details_card.dart';

class DetailsBody extends StatelessWidget {
  final ProductModel product;

  DetailsBody({@required this.product});

  @override
  Widget build(BuildContext context) {
    final Size mediasize = MediaQuery.of(context).size;

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
              DetailsAppBar(),
              addVerticalSpace(15),
              ProductImages(product: product),
              addVerticalSpace(15),
              ProductDetailsCard(product: product),
              addVerticalSpace(35),
              DetailsBodyBottomButtons(product: product),
            ],
          ),
        ),
      ),
    );
  }
}
