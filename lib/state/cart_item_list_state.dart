import 'package:state_notifier/state_notifier.dart';
import 'package:watch_store_app/models/cart_item_model.dart';
import 'package:watch_store_app/models/product_model.dart';
import 'package:watch_store_app/models/product_quantity_model.dart';

class CartItemListState extends StateNotifier<List<CartItemModel>> {
  CartItemListState() : super([]);

  void changeQuantity(CartItemModel cartList, bool isAdd) {
    List<CartItemModel> newState = [];

    for (var index = 0; index < state.length; index++) {
      if (state[index].productModel.id == cartList.productModel.id) {
        newState = [
          ...newState,
          CartItemModel(
            productModel: cartList.productModel,
            productQuantityModel: ProductQuantityModel(
                quantity: isAdd
                    ? state[index].productQuantityModel.quantity + 1
                    : state[index].productQuantityModel.quantity - 1),
          )
        ];
      } else {
        newState = [...newState, state[index]];
      }
    }
    state = newState;
  }

  void add(
      ProductModel productModel, ProductQuantityModel productQuantityModel) {
    state.length == 0
        ? getListWhenStateLengthZero(productModel, productQuantityModel)
        : getListWhenStateLengthNotZero(productModel, productQuantityModel);
  }

  getListWhenStateLengthZero(
      ProductModel productModel, ProductQuantityModel productQuantityModel) {
    state = [
      CartItemModel(
          productModel: productModel,
          productQuantityModel: productQuantityModel)
    ];
  }

  getListWhenStateLengthNotZero(
      ProductModel productModel, ProductQuantityModel productQuantityModel) {
    List<CartItemModel> newState = [];
    bool addCheck = false;
    print(state.length);

    for (var index = 0; index < state.length; index++) {
      print(state[index].productModel.title);
      if (state[index].productModel.id == productModel.id) {
        addCheck = true;
        newState = [
          ...newState,
          CartItemModel(
            productModel: productModel,
            productQuantityModel: ProductQuantityModel(
                quantity: state[index].productQuantityModel.quantity +
                    productQuantityModel.quantity),
          )
        ];
      } else {
        newState = [...newState, state[index]];
      }
    }

    addCheck
        ? null
        : newState = [
            ...state,
            CartItemModel(
              productModel: productModel,
              productQuantityModel: productQuantityModel,
            )
          ];

    state = newState;
  }
}
