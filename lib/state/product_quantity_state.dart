import 'package:state_notifier/state_notifier.dart';
import 'package:watch_store_app/models/product_quantity_model.dart';

class ProductQuantityState extends StateNotifier<ProductQuantityModel> {
  ProductQuantityState() : super(ProductQuantityModel(quantity: 0));

  void setZeroQuantity() {
    state = ProductQuantityModel(quantity: 0);
  }

  void increament() {
    state = ProductQuantityModel(quantity: state.quantity + 1);
  }

  void decreament() {
    state.quantity == 0
        ? 0
        : state = ProductQuantityModel(quantity: state.quantity - 1);
  }
}
