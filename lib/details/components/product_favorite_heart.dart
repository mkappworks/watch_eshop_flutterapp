import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watch_store_app/models/product_model.dart';
import 'package:watch_store_app/utilities/constants.dart';
import 'package:watch_store_app/utilities/provider_global_provider.dart';

class ProductFavoriteHeart extends HookWidget {
  ProductFavoriteHeart({
    @required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    final productsList = useProvider(productListProvider.state);

    return SvgPicture.asset(
        productsList[product.id].isFavourite ? kHeartFilled : kHeartBorder,
        color: productsList[product.id].colors[0]);
  }
}
