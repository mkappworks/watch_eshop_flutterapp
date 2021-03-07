import 'package:flutter/material.dart';
import 'package:watch_store_app/models/product_model.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key key,
    @required this.product,
    @required this.content,
    @required this.onTap,
     this.paddingValueHorizontal = 8.0,
     this.paddingValueVertical = 8.0,
  }) : super(key: key);

  final ProductModel product;
  final Widget content;
  final Function onTap;
  final double paddingValueHorizontal, paddingValueVertical;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: product.colors[0].withOpacity(0.5),
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: paddingValueHorizontal,
            vertical: paddingValueVertical,
          ),
          child: content,
        ),
      ),
    );
  }
}
