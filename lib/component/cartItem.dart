import 'package:ecommerce_app_13apr2024/models/cart.dart';
import 'package:ecommerce_app_13apr2024/models/shoes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  const CartItem({
    super.key,
    required this.shoes,
  });

  final Shoes shoes;

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
//remove item from cart
  void removeItemsFromCart() {
    Provider.of<cart>(context, listen: false).removeItemToCart(widget.shoes);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: ListTile(
          title: Text(widget.shoes.name),
          leading: SizedBox(
            height: 70,
            width: 70,
            child: Image.asset(
              widget.shoes.imagePath,
              fit: BoxFit.fill,
            ),
          ),
          subtitle: Text(widget.shoes.price),
          trailing: IconButton(
            onPressed: () {
              removeItemsFromCart();
            },
            icon: const Icon(Icons.delete),
          ),
        ),
      ),
    );
  }
}
