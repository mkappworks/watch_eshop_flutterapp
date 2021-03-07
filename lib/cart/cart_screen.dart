import 'package:flutter/material.dart';

import 'components/cart_body.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: CartBody(),
      ),
    );
  }
}
