import 'package:state_notifier/state_notifier.dart';
import 'package:watch_store_app/models/product_model.dart';

class ProductListState extends StateNotifier<List<ProductModel>> {
  ProductListState(List<ProductModel> _initialValue)
      : super(_initialValue ?? []);

  void changeFavoriteState(int id) {
    state = [
      for (final product in state)
        if (product.id == id)
          ProductModel(
            id: product.id,
            images: product.images,
            colors: product.colors,
            isFavourite: !product.isFavourite,
            isPopular: product.isPopular,
            title: product.title,
            subtitle: product.subtitle,
            price: product.price,
            description: product.description,
          )
        else
          product,
    ];
  }
}
