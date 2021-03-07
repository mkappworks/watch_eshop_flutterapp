import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watch_store_app/details/components/pop_up_dialog_card.dart';
import 'package:watch_store_app/details/components/product_favorite_heart.dart';
import 'package:watch_store_app/models/product_model.dart';
import 'package:watch_store_app/utilities/provider_global_provider.dart';
import 'package:watch_store_app/utilities/widget_functions.dart';

class DetailsBodyBottomButtons extends StatelessWidget {
  final GestureTapCallback press;
  final ProductModel product;

  DetailsBodyBottomButtons({
    this.press,
    this.product,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 1,
          child: InkWell(
            splashColor: Colors.grey,
            borderRadius: BorderRadius.circular(100),
            onTap: () => {
              productListProvider.read(context).changeFavoriteState(product.id)
            },
            child: Container(
              height: 70.0,
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: product.colors[0].withAlpha(50),
              ),
              child: ProductFavoriteHeart(product: product),
            ),
          ),
        ),
        addHorizontalSpace(25.0),
        BuyNowButton(product: product, themeData: themeData),
      ],
    );
  }
}
