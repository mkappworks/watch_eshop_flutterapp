import 'package:flutter/material.dart';
import 'package:watch_store_app/home/component/full_product_card.dart';
import 'package:watch_store_app/models/product_model.dart';

class FullProductCardHorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            demoProducts.length,
            (index) {
              if (demoProducts[index].isPopular)
                return FullProductCard(product: demoProducts[index]);

              return SizedBox.shrink(); // here by default width and height is 0
            },
          ),
        ],
      ),
    );
  }
}
