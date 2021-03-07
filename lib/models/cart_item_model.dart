import 'package:watch_store_app/models/product_model.dart';
import 'package:watch_store_app/models/product_quantity_model.dart';

class CartItemModel {
  final ProductModel productModel;
  final ProductQuantityModel productQuantityModel;

  CartItemModel({this.productModel, this.productQuantityModel});
}
