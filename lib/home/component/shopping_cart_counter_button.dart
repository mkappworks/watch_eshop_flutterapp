import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watch_store_app/cart/cart_screen.dart';
import 'package:watch_store_app/utilities/constants.dart';
import 'package:watch_store_app/utilities/provider_global_provider.dart';

import 'box_icon_button.dart';

class ShoppingCartCounterButton extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final cartList = useProvider(cartItemListProvider.state);

    return BoxIconButton(
      icon: kShoppingCart,
      press: () => Navigator.pushNamed(
        context,
        CartScreen.routeName,
      ),
      numOfitem: cartList.length,
    );
  }
}
