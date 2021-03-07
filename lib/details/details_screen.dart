import 'package:flutter/material.dart';
import 'package:watch_store_app/details/components/details_body.dart';
import 'package:watch_store_app/models/product_model.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments agrs =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: DetailsBody(product: agrs.product)),
    );
  }
}

class ProductDetailsArguments {
  final ProductModel product;

  ProductDetailsArguments({@required this.product});
}
