import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watch_store_app/models/product_model.dart';
import 'package:watch_store_app/state/cart_item_list_state.dart';
import 'package:watch_store_app/state/product_list_state.dart';
import 'package:watch_store_app/state/product_quantity_state.dart';

final productListProvider = StateNotifierProvider<ProductListState>((_) {
  return ProductListState(
      [...List.generate(demoProducts.length, (index) => demoProducts[index])]);
});

final productQuantityProvider =
    StateNotifierProvider((ref) => ProductQuantityState());

final cartItemListProvider =
    StateNotifierProvider((ref) => CartItemListState());
