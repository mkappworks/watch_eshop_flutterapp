import 'package:flutter/widgets.dart';
import 'package:watch_store_app/cart/cart_screen.dart';

import '../details/details_screen.dart';
import '../home/home_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
};
