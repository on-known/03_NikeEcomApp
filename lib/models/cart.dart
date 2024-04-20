import 'package:ecommerce_app_13apr2024/models/shoes.dart';
import 'package:flutter/material.dart';

class cart extends ChangeNotifier {
  //list of item for sale
  List<Shoes> shoeShop = [
    Shoes(
        name: "Ben Jorden sneakers ",
        price: "\$123",
        description: "Jorden paris snakers",
        imagePath: "assets/shoes1.jpeg"),
    Shoes(
        name: "Adidas Sneakers",
        price: "\$99",
        description: "Comfortable and stylish Adidas sneakers.",
        imagePath: "assets/shoes2.jpeg"),
    Shoes(
        name: "Nike Running Shoes",
        price: "\$150",
        description: "High-performance Nike running shoes .",
        imagePath: "assets/shoes3.jpeg"),
    Shoes(
        name: "Converse All Stars",
        price: "\$55",
        description: "Classic Converse sneakers.",
        imagePath: "assets/shoes4.jpeg"),
    Shoes(
        name: "Puma Shoes",
        price: "\$89",
        description: "Durable Puma basketball.",
        imagePath: "assets/shoes5.jpeg"),
    Shoes(
        name: "Vans Skate Shoes",
        price: "\$70",
        description: "Stylish Vans skaters and casual wear.",
        imagePath: "assets/shoes6.jpeg"),
  ];

  //list of item in user cart

  List<Shoes> userCart = [];
  //get list of shoes for sale

  List<Shoes> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoes> getUserCart() {
    return userCart;
  }
  //add item to cart

  void addItemToCart(Shoes shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeItemToCart(Shoes shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
