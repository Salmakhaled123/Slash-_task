import 'dart:ui';

import 'package:flutter/material.dart';

class Product {
  final String productId;
  final bool inStock;
  final String productImage;
  final String productName;
  final List<int> productPrice;
  final List<String>? productImages;

  final String brandName;
  String? brandLogo;
  final String description;

  Product(
      {required this.productImage,
      required this.productId,
      required this.inStock,
      required this.productName,
      required this.productPrice,
      required this.productImages,
      required this.brandName,
      this.brandLogo,
      required this.description,
      this.productVariations});
  final ProductVariations? productVariations;
}

class ProductVariations {
  final List<Color>? colors;
  final List<String>? size;
  final List<String>? material;
  final String? changePriceBasedOnChangeInSize;
  ProductVariations(
      {this.colors,
      this.size,
      this.material,
      this.changePriceBasedOnChangeInSize});
}

// no color  material       // scarf
// one color with many size  material    // dress
// many size + colours   // shoes
//colours ,many size ,material // t-shirt
List<Product> productList = [
  //t shirt
  Product(
      inStock: true,
      productImage: 'assets/images/tshirt.png',
      productName: 'T- shirt',
      productId: '1',
      productPrice: [250, 350, 450],
      productImages: [
        'assets/images/tshirt.png',
        'assets/images/orange_tshirt.png'
      ],
      brandName: 'Egypto',
      description: 'simple t shirt for summer',
      productVariations: ProductVariations(colors: [
        Color(Colors.blueAccent.value),
        Color(Colors.orange.value),
      ], size: [
        'L',
        'XL',
        'XXL'
      ], material: [
        'COTTON',
        'polyester'
      ])),
  //shoes
  Product(
      inStock: true,
      productImage: 'assets/images/shoes.png',
      productName: 'shoes',
      productId: '2',
      productPrice: [250, 350, 450, 500, 550],
      productImages: [
        'assets/images/shoes.png',
        'assets/images/brown_shoes.png'
      ],
      brandName: 'Nike',
      description: 'stylish shoes and comfortable for walking ',
      productVariations: ProductVariations(
          colors: [Colors.black, Colors.brown, Colors.grey],
          size: ['35', '38', '40', '42'],
          material: [])),
  //dress
  Product(
      inStock: true,
      productImage: 'assets/images/dress.png',
      productName: 'dress',
      productId: '3',
      productPrice: [250],
      productImages: [
        'assets/images/dress.png',
      ],
      brandName: 'cottono',
      description: 'nice dress',
      productVariations: ProductVariations(
          colors: [Colors.teal], size: ['one size'], material: ['COTTON'])),
  // scarf
  Product(
      inStock: false,
      productImage: 'assets/images/scarf.png',
      productName: 'scarf',
      productId: '4',
      productPrice: [250],
      productImages: [
        'assets/images/scarf.png',
      ],
      brandName: 'scarfoo',
      description: 'stylish scarf for women',
      productVariations:
          ProductVariations(colors: [], size: [], material: ['COTTON'])),
];
