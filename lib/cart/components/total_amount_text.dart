import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watch_store_app/utilities/provider_global_provider.dart';

class TotalAmountText extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final cartList = useProvider(cartItemListProvider.state);
    double getTotalAmount = 0.0;

    for (int i = 0; i < cartList.length; i++) {
      getTotalAmount += cartList[i].productModel.price *
          cartList[i].productQuantityModel.quantity;
    }

    return Text(
      '${getTotalAmount}',
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }
}
