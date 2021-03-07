import 'package:flutter/material.dart';

class ProductModel {
  final int id;
  final String title, subtitle, description;
  final List<String> images;
  final List<Color> colors;
  final double price;
  final bool isFavourite, isPopular;

  ProductModel({
    @required this.id,
    @required this.images,
    @required this.colors,
    this.isFavourite = false,
    this.isPopular = false,
    @required this.title,
    @required this.subtitle,
    @required this.price,
    @required this.description,
  });
}

List<ProductModel> demoProducts = [
  ProductModel(
    id: 0,
    images: [
      "assets/images/Ascari_GP_Rose_Gold_Black.png",
      "assets/images/Ascari_GP_Rose_Gold_Black.png",
      "assets/images/Ascari_GP_Rose_Gold_Black.png",
      "assets/images/Ascari_GP_Rose_Gold_Black.png",
    ],
    colors: [
      Color.fromRGBO(170, 126, 111, 1.0), //COLOR_GOLDPINK
      Colors.white,
      Color.fromRGBO(170, 126, 111, 1.0), //COLOR_GOLDPINK
      Colors.white,
    ],
    title: "Ascari GP",
    subtitle: 'Swiss Watch',
    price: 2000.00,
    description: description,
    isPopular: false,
  ),
  ProductModel(
    id: 1,
    images: [
      "assets/images/Ascari_GP_Rose_Gold_Black.png",
      "assets/images/Ascari_GP_Rose_Gold_Black.png",
      "assets/images/Ascari_GP_Rose_Gold_Black.png",
      "assets/images/Ascari_GP_Rose_Gold_Black.png",
    ],
    colors: [
      Color.fromRGBO(170, 126, 111, 1.0), //COLOR_GOLDPINK
      Colors.white,
      Color.fromRGBO(170, 126, 111, 1.0), //COLOR_GOLDPINK
      Colors.white,
    ],
    title: "Ascari GP",
    subtitle: 'Swiss Watch',
    price: 1000.00,
    description: description,
    isPopular: true,
  ),
  ProductModel(
    id: 2,
    images: [
      "assets/images/Ascari_Indigo_Rose_Gold.png",
      "assets/images/Ascari_Indigo_Rose_Gold.png",
      "assets/images/Ascari_Indigo_Rose_Gold.png",
      "assets/images/Ascari_Indigo_Rose_Gold.png",
    ],
    colors: [
      Color.fromRGBO(35, 56, 106, 1.0),
      Colors.white,
      Color.fromRGBO(35, 56, 106, 1.0),
      Colors.white,
    ],
    title: "Ascari Indigo",
    subtitle: 'Swiss Watch',
    price: 500.50,
    description: description,
    isPopular: true,
  ),
  ProductModel(
    id: 3,
    images: [
      "assets/images/Ascari_Tuscany.png",
      "assets/images/Ascari_Tuscany.png",
      "assets/images/Ascari_Tuscany.png",
      "assets/images/Ascari_Tuscany.png",
    ],
    colors: [
      Color.fromRGBO(235, 203, 79, 1.0),
      Colors.white,
      Color.fromRGBO(235, 203, 79, 1.0),
      Colors.white,
    ],
    title: "Ascari Tuscany",
    subtitle: 'Swiss Watch',
    price: 360.55,
    description: description,
    isPopular: true,
  ),
  ProductModel(
    id: 4,
    images: [
      "assets/images/Ascari_Two_Tone_Gold.png",
      "assets/images/Ascari_Two_Tone_Gold.png",
      "assets/images/Ascari_Two_Tone_Gold.png",
      "assets/images/Ascari_Two_Tone_Gold.png",
    ],
    colors: [
      Color.fromRGBO(182, 149, 97, 1.0),
      Colors.white,
      Color.fromRGBO(182, 149, 97, 1.0),
      Colors.white,
    ],
    title: "Ascari Two",
    subtitle: 'Swiss Watch',
    price: 200.20,
    description: description,
  ),
  ProductModel(
    id: 5,
    images: [
      "assets/images/Odyssey_Two_Tone_Gold_Blue.png",
      "assets/images/Odyssey_Two_Tone_Gold_Blue.png",
      "assets/images/Odyssey_Two_Tone_Gold_Blue.png",
      "assets/images/Odyssey_Two_Tone_Gold_Blue.png",
    ],
    colors: [
      Color.fromRGBO(58, 111, 86, 1.0),
      Colors.white,
      Color.fromRGBO(58, 111, 86, 1.0),
      Colors.white,
    ],
    title: "Odyssey Two",
    subtitle: 'Swiss Watch',
    price: 2000.20,
    description: description,
  ),
];

const colornew = Color(0xFFCD5C5C);
const String description =
    'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.';
