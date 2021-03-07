import 'package:flutter/material.dart';
import 'package:watch_store_app/utilities/widget_functions.dart';

import 'cart_app_bar.dart';
import 'cart_item_list_column.dart';
import 'make_payment_button.dart';
import 'total_amount_card.dart';

class CartBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size mediasize = MediaQuery.of(context).size;

    double screenHorizontalPadding = 20.0;
    double screenVerticalPadding = 0.0;
    final sidePadding = EdgeInsets.symmetric(
        horizontal: screenHorizontalPadding, vertical: screenVerticalPadding);

    return SafeArea(
      child: Padding(
        padding: sidePadding,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CartAppBar(),
              addVerticalSpace(15),
              CartItemListColumn(),
              TotalAmountCard(),
              MakePaymentButton(),
            ],
          ),
        ),
      ),
    );
  }
}
