import 'package:flutter/material.dart';
import 'package:watch_store_app/home/component/box_icon_button.dart';
import 'package:watch_store_app/home/component/shopping_cart_counter_button.dart';
import 'package:watch_store_app/utilities/constants.dart';

class DetailsAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BoxIconButton(
          icon: kBackSpace,
          press: () => Navigator.pop(context),
        ),
        ShoppingCartCounterButton(),
      ],
    );
  }
}
