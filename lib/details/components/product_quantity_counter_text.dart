import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:watch_store_app/utilities/provider_global_provider.dart';

class ProductQuantityCounterText extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final productQuantity = useProvider(productQuantityProvider.state);

    return Text(
      '${productQuantity.quantity}',
      style: TextStyle(
        color: Colors.black,
        fontSize: 40.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'helvetica_neue_light',
      ),
      textAlign: TextAlign.center,
    );
  }
}
