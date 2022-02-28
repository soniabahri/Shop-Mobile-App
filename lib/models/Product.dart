import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size;
  int id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> Productions = [
  Product(
    id: 1,
    image: "assets/images/shoes1.jpg",
    title: "Shoes 1",
    price: 245,
    description: "C'est un article vraiment tres belle et chic !!",
    size: 38,
    color: const Color(0xFFFFFFFF),
  ),
  Product(
      id: 2,
      image: "assets/images/shoes2.jpg",
      title: "Shoes 2",
      price: 325,
      description: "C'est un article vraiment tres belle et chic !!",
      size: 38,
      color: Color(0xFFFFFFFF)),
  Product(
      id: 3,
      image: "assets/images/shoes3.jpg",
      title: "Shoes 3",
      price: 125,
      description: "C'est un article vraiment tres belle et chic !!",
      size: 38,
      color: Color(0xFFFFFFFF)),
  Product(
      id: 4,
      image: "assets/images/shoes4.jpg",
      title: "Shoes 4",
      price: 180,
      description: "C'est un article vraiment tres belle et chic !!",
      size: 38,
      color: Color(0xFFFFFFFF)),
  Product(
      id: 5,
      image: "assets/images/shoes5.jpg",
      title: "Shoes 5",
      price: 95,
      description: "C'est un article vraiment tres belle et chic !!",
      size: 38,
      color: Color(0xFFFFFFFF)),
  Product(
      id: 6,
      image: "assets/images/shoes6.jpg",
      title: "Shoes 6",
      price: 450,
      description: "C'est un article vraiment tres belle et chic !!",
      size: 38,
      color: Color(0xFFFFFFFF))
];
