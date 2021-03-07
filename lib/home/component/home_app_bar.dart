import 'package:flutter/material.dart';
import 'package:watch_store_app/home/component/box_icon_button.dart';
import 'package:watch_store_app/utilities/constants.dart';

import 'shopping_cart_counter_button.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BoxIconButton(
          icon: kSideListSvg,
          press: () {},
        ),
        ShoppingCartCounterButton(),
      ],
    );
  }
}
