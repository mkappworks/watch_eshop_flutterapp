import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watch_store_app/details/components/product_quantity_counter_text.dart';
import 'package:watch_store_app/models/product_model.dart';
import 'package:watch_store_app/state/product_quantity_state.dart';
import 'package:watch_store_app/utilities/constants.dart';
import 'package:watch_store_app/utilities/provider_global_provider.dart';
import 'package:watch_store_app/utilities/widget_functions.dart';

import 'custom_button.dart';

class BuyNowButton extends HookWidget {
  BuyNowButton({
    @required this.product,
    @required this.themeData,
  });

  final ProductModel product;
  final ThemeData themeData;

  void showAlertDialog(BuildContext context, ProductModel product,
      ProductQuantityState productQuantityModel) {
    productQuantityProvider.read(context).setZeroQuantity();

    void addCart(context, ProductModel productModel,
        ProductQuantityState productQuantityModel) {
      productQuantityModel.state.quantity > 0
          ? cartItemListProvider
              .read(context)
              .add(productModel, productQuantityModel.state)
          : null;

      Navigator.of(context).pop();
    }

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Center(
          child: Container(
            width: MediaQuery.of(context).size.width / 1.3,
            height: MediaQuery.of(context).size.height / 3,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(32.0)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ProductQuantityCounterText(),
                addVerticalSpace(30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      product: product,
                      content: Icon(Icons.remove),
                      onTap: () =>
                          productQuantityProvider.read(context).decreament(),
                    ),
                    addHorizontalSpace(30.0),
                    CustomButton(
                      product: product,
                      content: Icon(Icons.add),
                      onTap: () =>
                          productQuantityProvider.read(context).increament(),
                    ),
                  ],
                ),
                addVerticalSpace(40.0),
                CustomButton(
                  product: product,
                  paddingValueHorizontal: 40.0,
                  paddingValueVertical: 10.0,
                  content: Text(
                    'Continue',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontFamily: 'helvetica_neue_light',
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onTap: () => addCart(context, product, productQuantityModel),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final productQuantity = useProvider(productQuantityProvider);

    return Expanded(
      flex: 4,
      child: InkWell(
        splashColor: Colors.grey,
        borderRadius: BorderRadius.circular(100),
        onTap: () => showAlertDialog(context, product, productQuantity),
        child: Container(
            height: 70.0,
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: product.colors[0],
            ),
            child: Center(
              child: Text(
                'Buy Now',
                style: themeData.textTheme.headline1
                    .copyWith(color: COLOR_WHITE, fontSize: 25.0),
              ),
            )),
      ),
    );
  }
}

// class PopUpDialogCard {
//
// }
