import 'package:flutter/material.dart';
import 'package:watch_store_app/models/product_model.dart';
import 'package:watch_store_app/utilities/constants.dart';
import 'package:watch_store_app/utilities/widget_functions.dart';

class ProductImages extends StatefulWidget {
  final ProductModel product;

  ProductImages({
    @required this.product,
  });

  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Hero(
          tag: widget.product.id.toString(),
          child: Container(
            width: 250,
            height: 450,
            child: Stack(
              overflow: Overflow.visible,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: widget.product.colors[0],
                  ),
                ),
                Positioned(
                    width: 300,
                    height: 650,
                    top: -25,
                    left: 50,
                    child: Image.asset(widget.product.images[selectedImage]))
              ],
            ),
          ),
        ),
        addVerticalSpace(60.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(widget.product.images.length,
                (index) => buildSmallProductPreview(index)),
          ],
        )
      ],
    );
  }

  GestureDetector buildSmallProductPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: AnimatedContainer(
        duration: defaultDuration,
        margin: EdgeInsets.only(right: 15),
        padding: EdgeInsets.all(8),
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: widget.product.colors[0]
                  .withOpacity(selectedImage == index ? 1 : 0)),
        ),
        child: Image.asset(widget.product.images[index]),
      ),
    );
  }
}
