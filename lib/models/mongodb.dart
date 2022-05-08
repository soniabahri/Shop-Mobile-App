import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'Product.dart';

class ConnectionSingleton{

  static ConnectionSingleton conn = ConnectionSingleton._();

  ConnectionSingleton._();

  static getInstance(){
    return ConnectionSingleton.conn;
  }

  Future<List<Product>> get(String path) async{
    var response = await http.get(Uri.http("192.168.1.100:8000", path));
    List<Product> products = [];
    var data = json.decode(response.body);
    for (var val in data){
      Product product = Product(id: val["id"], image:  CachedNetworkImage(
        fit: BoxFit.fill, imageUrl: val["images"][0],
        placeholder: (context, url)=> Column(
          children: const [Padding(
            padding: EdgeInsets.all(8.0),
            child: CircularProgressIndicator(),
          ),]
        ),
      ),
          title: val["title"], price: val["price"].toString(), description: val["description"], size: val["sizes"][0],
          color: (val["colors"].length > 0)?val["colors"][0]: "Unknown");
      products.add(product);
    }
    return products;
  }



}