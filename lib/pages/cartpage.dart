import 'package:ecommerce_app_13apr2024/component/cartItem.dart';
import 'package:ecommerce_app_13apr2024/models/cart.dart';
import 'package:ecommerce_app_13apr2024/models/shoes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<cart>(
      builder: (context, value, child) => Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              "My Cart",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: value.getUserCart().length,
              itemBuilder: (context, index) {
                //Get individial shoe

                Shoes individiualshoes = value.getUserCart()[index];
                return CartItem(
                  shoes: individiualshoes,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
