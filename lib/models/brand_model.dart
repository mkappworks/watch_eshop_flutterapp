import 'package:flutter/material.dart';

class BrandModel {
  final int id;
  final String title, country;
  final String image;
  final Color color;

  BrandModel({
    @required this.id,
    @required this.image,
    @required this.color,
    @required this.title,
    @required this.country,
  });
}

List<BrandModel> demoBrands = [
  BrandModel(
    id: 1,
    image: "assets/logos/casino.png",
    color: Color.fromRGBO(232, 236, 255, 1.0),
    title: "Casino",
    country: "Japan",
  ),
  BrandModel(
    id: 2,
    image: "assets/logos/micheal_koros.png",
    color: Color.fromRGBO(241, 241, 241, 1.0),
    title: "Micheal Koros",
    country: "U.S.A.",
  ),
  BrandModel(
    id: 3,
    image: "assets/logos/guess.png",
    color: Color.fromRGBO(251, 239, 240, 1.0),
    title: "Guess",
    country: "U.S.A.",
  ),
  BrandModel(
    id: 4,
    image: "assets/logos/jacques_lemans.png",
    color: Color.fromRGBO(232, 236, 255, 1.0),
    title: "Jacques Lemans",
    country: "France",
  ),
];
