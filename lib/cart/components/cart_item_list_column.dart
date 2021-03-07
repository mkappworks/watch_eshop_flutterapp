import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watch_store_app/models/cart_item_model.dart';
import 'package:watch_store_app/utilities/provider_global_provider.dart';
import 'package:watch_store_app/utilities/widget_functions.dart';

class CartItemListColumn extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final cartList = useProvider(cartItemListProvider.state);
    double screenHorizontalPadding = 20.0;
    double screenVerticalPadding = 0.0;
    final sidePadding = EdgeInsets.symmetric(
        horizontal: screenHorizontalPadding, vertical: screenVerticalPadding);
    final Size mediaSize = MediaQuery.of(context).size;
    final cardWidth = mediaSize.width - screenHorizontalPadding;

    return Container(
      child: Column(
        children: [
          ...List.generate(
              cartList.length,
              (index) => CustomCartCard(
                    cardWidth: cardWidth,
                    cartList: cartList,
                    index: index,
                  )),
        ],
      ),
    );
  }
}

class CustomCartCard extends StatelessWidget {
  const CustomCartCard({
    Key key,
    @required this.cardWidth,
    @required this.cartList,
    @required this.index,
  }) : super(key: key);

  final int index;
  final double cardWidth;
  final List<CartItemModel> cartList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: 60.0,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12.0)),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              addHorizontalSpace(cardWidth * 0.02),
              Container(
                width: cardWidth * 0.05,
                child: Text('${index + 1}'),
              ),
              addHorizontalSpace(cardWidth * 0.02),
              Container(
                width: cardWidth * 0.060,
                child: Image.asset('${cartList[index].productModel.images[0]}'),
              ),
              addHorizontalSpace(cardWidth * 0.02),
              Container(
                  width: cardWidth * 0.33,
                  child: Text('${cartList[index].productModel.title}')),
              addHorizontalSpace(cardWidth * 0.02),
              CartQuantityChangeButton(
                onTap: () => cartItemListProvider
                    .read(context)
                    .changeQuantity(cartList[index], false),
                icon: Icons.remove,
              ),
              addHorizontalSpace(cardWidth * 0.02),
              CartItemCardQuantityText(
                  cardWidth: cardWidth, cartList: cartList, index: index),
              addHorizontalSpace(cardWidth * 0.02),
              CartQuantityChangeButton(
                onTap: () => cartItemListProvider
                    .read(context)
                    .changeQuantity(cartList[index], true),
                icon: Icons.add,
              ),
              addHorizontalSpace(cardWidth * 0.02),
              Text(
                  '${cartList[index].productModel.price * cartList[index].productQuantityModel.quantity}'),
            ],
          ),
        ),
      ),
    );
  }
}

class CartItemCardQuantityText extends StatelessWidget {
  const CartItemCardQuantityText({
    Key key,
    @required this.cardWidth,
    @required this.cartList,
    @required this.index,
  }) : super(key: key);

  final double cardWidth;
  final List<CartItemModel> cartList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardWidth * 0.055,
      child: Center(
        child: Text('${cartList[index].productQuantityModel.quantity}'),
      ),
    );
  }
}

class CartQuantityChangeButton extends StatelessWidget {
  final Function onTap;
  final IconData icon;

  CartQuantityChangeButton({
    @required this.onTap,
    @required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        child: Icon(icon),
      ),
    );
  }
}
